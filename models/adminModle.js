const db = require("../data/db");
const { customAlphabet } = require("nanoid");
const { getActivitesSql } = require("../sql/getActivitesSql");
const { getUserSql } = require("../sql/getUsersSql");
const { sendEmailNotification } = require("../middlewares/emailNoti");
const fs = require("fs");
exports.addUser = async ({ name, email, phone, department, type }) => {
  let text =
    "INSERT INTO users (name,email,phone_number,department,type) VALUES(?,?,?,?,?)";
  let vals = [name, email, phone, JSON.stringify(department), type];
  console.log(vals);
  let res = await db
    .promise()
    .query(text, vals)
    .then(([rows]) => rows)
    .catch((err) => {
      throw err;
    });
  console.log(res);
};
exports.getNames = async (string) => {
  let text =
    "SELECT user_id AS id,name,email FROM users WHERE name LIKE CONCAT('%',?,'%')";
  let vals = [string];
  let res = await db
    .promise()
    .query(text, vals)
    .then(([rows]) => rows)
    .catch((err) => {
      throw err;
    });
  return res;
};
exports.addActivity = async (data, files) => {
  console.log("here", data);
  let {
    title,
    location,
    summary,
    dateFrom,
    dateTo,
    orderDate,
    barcode,
    privateOptin,
    participants,
    link,
    department,
    type,
  } = data;
  barcode = barcode || `ACT-${customAlphabet("1234567890", 12)()}`;
  let text =
    "INSERT INTO activities (title,location,summary,start_date,end_date,order_date,barcode_id,link,department,type) VALUES(?,?,?,?,?,?,?,?,?,?); ";
  let vals = [
    title,
    location,
    summary,
    dateFrom,
    dateTo,
    orderDate,
    barcode,
    link,
    department,
    type,
  ];
  let res = await db
    .promise()
    .query(text, vals)
    .then(([rows]) => rows)
    .catch((err) => {
      throw err;
    });
  let id = res.insertId;

  let text_2 =
    "INSERT INTO activity_image (url,private,activity_id) VALUES (?,?,?)";
  if (files.images) {
    files.images.map(async (file, i) => {
      await db
        .promise()
        .query(text_2, [
          file.path,
          Array.isArray(privateOptin) ? privateOptin[i] : privateOptin,
          id,
        ])
        .then(([rows]) => rows)
        .catch((err) => {
          throw err;
        });
    });
  }
  let text_4 =
    "INSERT INTO activity_file (url,activity_id,name) VALUES (?,?,?)";
  if (files.pdf) {
    files.pdf.map(async (file, i) => {
      await db
        .promise()
        .query(text_4, [file.path, id, file.originalname])
        .then(([rows]) => rows)
        .catch((err) => {
          throw err;
        });
    });
  }
  let text_3 =
    "INSERT INTO activities_has_users (activity_id,user_id) VALUES(?,?) ";
  if (participants) {
    JSON.parse(participants).map(async (participant) => {
      console.log(id, participant);
      await db
        .promise()
        .query(text_3, [id, participant.id])
        .then(([rows]) => rows)
        .catch((err) => {
          throw err;
        });
    });
  }
  try {
    let emails = JSON.parse(participants).map(
      (participant) => participant.email
    );
    sendEmailNotification(emails, title, orderDate, barcode);
  } catch (err) {
    console.log(err);
  }
};
exports.getActivites = async (query, userType, userDepartment, userId) => {
  const { string, dateFrom, dateTo, department, type } = query;
  let text;
  let vals;
  console.log(JSON.stringify(department));
  if (dateFrom && dateTo) {
    text = getActivitesSql.sql_3;
    vals = [JSON.stringify(department), type, dateFrom, dateTo, string, string];
  } else if (dateFrom) {
    text = getActivitesSql.sql_2;
    vals = [JSON.stringify(department), type, dateFrom, string, string];
  } else {
    text = getActivitesSql.sql_1;
    vals = [JSON.stringify(department), type, string, string];
  }
  if (userType === "supervisor") {
    vals[0] = userDepartment;
  }

  if (userType === "user") {
    if (dateFrom && dateTo) {
      text = getActivitesSql.user_sql_3;
      vals = vals = [userId, dateFrom, dateTo, string, string, type];
    } else if (dateFrom) {
      text = getActivitesSql.user_sql_2;
      vals = vals = [userId, dateFrom, string, string, type];
    } else {
      text = getActivitesSql.user_sql_1;
      vals = [userId, string, string, type];
    }
  }

  let res = await db
    .promise()
    .query(text, vals)
    .then(([rows]) => rows)
    .catch((err) => {
      throw err;
    });

  return res;
};
exports.deleteActivity = async (id) => {
  let text = "DELETE FROM activities WHERE activity_id = ?";
  let vals = [id];
  await db
    .promise()
    .query(text, vals)
    .then(([rows]) => rows)
    .catch((err) => {
      throw err;
    });
  let text_2 = "DELETE FROM activities_has_users WHERE activity_id = ?";
  await db
    .promise()
    .query(text_2, vals)
    .then(([rows]) => rows)
    .catch((err) => {
      throw err;
    });
  let text_3 = "SELECT url FROM activity_image WHERE activity_id = ?";
  let res = await db
    .promise()
    .query(text_3, [id])
    .then(([rows]) => rows)
    .catch((err) => {
      throw err;
    });
  res.map((image) => {
    fs.unlink(image.url, (err) => {
      console.error(err);
    });
  });
};
exports.deleteUser = async (id) => {
  console.log(id);
  let text = "DELETE FROM users WHERE user_id = ?";
  let vals = [id];
  await db
    .promise()
    .query(text, vals)
    .then(([rows]) => rows)
    .catch((err) => {
      throw err;
    });
  let text_2 = "DELETE FROM activities_has_users WHERE user_id = ?";
  await db
    .promise()
    .query(text_2, vals)
    .then(([rows]) => rows)
    .catch((err) => {
      throw err;
    });
};

exports.updateActivity = async (data, files) => {
  console.log(files);
  let {
    title,
    location,
    summary,
    dateFrom,
    dateTo,
    orderDate,

    privateOptin,
    participants,
    link,
    department,
    type,
    deleteImages,
    deleteFiles,
    id,
  } = data;

  let text =
    "UPDATE activities SET title = ?, location = ?, summary = ?, start_date = ?, end_date = ?, order_date = ?, link = ?, department = ?, type = ? WHERE activity_id = ?";
  let vals = [
    title,
    location,
    summary,
    dateFrom,
    dateTo,
    orderDate,

    link,
    department,
    type,
    id,
  ];
  await db
    .promise()
    .query(text, vals)
    .then(([rows]) => rows)
    .catch((err) => {
      throw err;
    });
  if (deleteImages === "true") {
    let text = "SELECT url FROM activity_image WHERE activity_id = ?";
    let res = await db
      .promise()
      .query(text, [id])
      .then(([rows]) => rows)
      .catch((err) => {
        throw err;
      });
    res.map((image) => {
      fs.unlink(image.url, (err) => {
        console.error(err);
      });
    });
  }
  if (deleteFiles === "true") {
    let text = "SELECT url FROM activity_file WHERE activity_id = ?";
    let res = await db
      .promise()
      .query(text, [id])
      .then(([rows]) => rows)
      .catch((err) => {
        throw err;
      });
    res.map((file) => {
      fs.unlink(file.url, (err) => {
        console.error(err);
      });
    });
  }
  if (deleteImages === "true") {
    let text = "DELETE FROM activity_image WHERE activity_id = ?";
    let vals = [id];
    await db
      .promise()
      .query(text, vals)
      .then(([rows]) => rows)
      .catch((err) => {
        throw err;
      });
  }
  if (deleteFiles === "true") {
    let text = "DELETE FROM activity_file WHERE activity_id = ?";
    let vals = [id];
    await db
      .promise()
      .query(text, vals)
      .then(([rows]) => rows)
      .catch((err) => {
        throw err;
      });
  }
  if (files.images) {
    let text_2 =
      "INSERT INTO activity_image (url,private,activity_id) VALUES (?,?,?)";
    files.images.map(async (file, i) => {
      await db
        .promise()
        .query(text_2, [
          file.path,
          Array.isArray(privateOptin) ? privateOptin[i] : privateOptin,
          id,
        ])
        .then(([rows]) => rows)
        .catch((err) => {
          throw err;
        });
    });
  }
  await db
    .promise()
    .query("DELETE FROM activities_has_users WHERE activity_id = ?", [id])
    .then(([rows]) => rows)
    .catch((err) => {
      throw err;
    });
  let text_3 =
    "INSERT INTO activities_has_users (activity_id,user_id) VALUES(?,?) ";
  if (participants) {
    JSON.parse(participants).map(async (participant) => {
      console.log(id, participant);
      await db
        .promise()
        .query(text_3, [id, participant.id])
        .then(([rows]) => rows)
        .catch((err) => {
          throw err;
        });
    });
  }
  let text_4 =
    "INSERT INTO activity_file (url,activity_id,name) VALUES (?,?,?)";
  if (files.pdf) {
    files.pdf.map(async (file, i) => {
      await db
        .promise()
        .query(text_4, [file.path, id, file.originalname])
        .then(([rows]) => rows)
        .catch((err) => {
          throw err;
        });
    });
  }
};
exports.getUsers = async (query) => {
  let { string, department } = query;
  console.log("dawda", JSON.stringify(department));
  let text = getUserSql.sql_1;
  let vals = [string, JSON.stringify(department)];

  let res = await db
    .promise()
    .query(text, vals)
    .then(([rows]) => rows)
    .catch((err) => {
      throw err;
    });

  return res;
};

exports.updateUser = async (data) => {
  let { name, department, email, phone, supervisor, id } = data;
  let type = supervisor ? "supervisor" : "user";
  let text =
    "UPDATE users SET name = ?, email = ?, phone_number = ? , department = ? ,type = ? WHERE user_id = ?";
  let vals = [name, email, phone, department, type, id];
  await db
    .promise()
    .query(text, vals)
    .then(([rows]) => rows)
    .catch((err) => {
      throw err;
    });
};
