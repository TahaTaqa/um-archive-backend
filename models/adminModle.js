const db = require("../data/db");
const { customAlphabet } = require("nanoid");
const { getActivitesSql } = require("../sql/getActivitesSql");
exports.addUser = async ({ name, email, phone, department, superviser }) => {
  let type = superviser ? "superviser" : "user";
  let text =
    "INSERT INTO users (name,email,phone_number,department,type) VALUES(?,?,?,?,?)";
  let vals = [name, email, phone, department, type];
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
    "SELECT user_id,name,email FROM users WHERE name LIKE CONCAT(?,'%')";
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
  } = data;
  barcode = barcode || `AC-${customAlphabet("1234567890", 12)()}`;
  let text =
    "INSERT INTO activities (title,location,summary,start_date,end_date,order_date,barcode_id,link,department) VALUES(?,?,?,?,?,?,?,?,?); ";
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

  files.map(async (file, i) => {
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
  let text_3 =
    "INSERT INTO activities_has_users (activity_id,user_id) VALUES(?,?) ";
  if (participants) {
    JSON.parse(participants).map(async (participant) => {
      console.log(id, participant);
      await db
        .promise()
        .query(text_3, [id, participant.user_id])
        .then(([rows]) => rows)
        .catch((err) => {
          throw err;
        });
    });
  }
};
exports.getActivites = async (query, userType, userDepartment, userId) => {
  const { string, dateFrom, dateTo, department } = query;
  let text;
  let vals;
  if (dateFrom && dateTo) {
    text = getActivitesSql.sql_3;
    vals = [department, dateFrom, dateTo, string, string];
  } else if (dateFrom) {
    text = getActivitesSql.sql_2;
    vals = [department, dateFrom, string, string];
  } else {
    text = getActivitesSql.sql_1;
    vals = [department, string, string];
  }
  if (userType === "superviser") {
    vals[0] = userDepartment;
  }

  if (userType === "user") {
    console.log("dwdw");
    if (dateFrom && dateTo) {
      text =
        " SELECT a.*,  a.activity_id  as id, COUNT(a.activity_id ) AS participants_count , JSON_ARRAYAGG(JSON_OBJECT('name', u.name, 'id', u.id, 'email', u.email)) as participants FROM activities AS a INNER JOIN activity_user AS u ON a.activity_id  = u.activity_id   WHERE a.activity_id  IN (SELECT activity_id FROM activity_user WHERE user_id = ?)   AND a.start_date >= ? AND a.end_date <= ? AND  (title LIKE COALESCE(CONCAT(?,'%'),'%') OR barcode_id LIKE COALESCE(CONCAT(?,'%'),'%')) GROUP BY a.activity_id ;";
      vals = vals = [userId, dateFrom, dateTo, string, string];
    } else if (dateFrom) {
      text =
        " SELECT a.*,  a.activity_id  as id, COUNT(a.activity_id ) AS participants_count , JSON_ARRAYAGG(JSON_OBJECT('name', u.name, 'id', u.id, 'email', u.email)) as participants FROM activities AS a INNER JOIN activity_user AS u ON a.activity_id  = u.activity_id   WHERE a.activity_id  IN (SELECT activity_id FROM activity_user WHERE user_id = ?)   AND a.start_date >= ? AND  (title LIKE COALESCE(CONCAT(?,'%'),'%') OR barcode_id LIKE COALESCE(CONCAT(?,'%'),'%')) GROUP BY a.activity_id ;";
      vals = vals = [userId, dateFrom, string, string];
    } else {
      text =
        " SELECT a.*,  a.activity_id  as id, (SELECT COUNT(activity_has_users.user_id) FROM activites_has_users WHERE activities_has_users.activity_id = a.id )AS participants_count , JSON_ARRAYAGG(JSON_OBJECT('name', u.name, 'id', u.id, 'email', u.email)) as participants FROM activities AS a INNER JOIN activity_user AS u ON a.activity_id  = u.activity_id   WHERE a.activity_id  IN (SELECT activity_id FROM activity_user WHERE user_id = ?)   AND  (title LIKE COALESCE(CONCAT(?,'%'),'%') OR barcode_id LIKE COALESCE(CONCAT(?,'%'),'%')) GROUP BY a.activity_id ;";
      vals = [userId, string, string];
    }
  }
  console.log("dw", userId);
  let res = await db
    .promise()
    .query(text, vals)
    .then(([rows]) => rows)
    .catch((err) => {
      throw err;
    });

  return res;
};
