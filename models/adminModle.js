const db = require("../data/db");
const { customAlphabet } = require("nanoid");
exports.addUser = async ({ name, email, phone, department, superviser }) => {
  let text =
    "INSERT INTO employees (name,email,phone_number,department,type) VALUES(?,?,?,?,?)";
  let vals = [name, email, phone, department, superviser];
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
    "SELECT id,name,email FROM employees WHERE name LIKE CONCAT(?,'%')";
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
  console.log(files);
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
  } = data;
  barcode = barcode || customAlphabet("1234567890", 12)();
  let text =
    "INSERT INTO activities (title,location,summary,start_date,end_date,order_date,barcode_id,link) VALUES(?,?,?,?,?,?,?,?); ";
  let vals = [
    title,
    location,
    summary,
    dateFrom,
    dateTo,
    orderDate,
    barcode,
    link,
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
    "INSERT INTO activity_user (activity_id,user_id,email,name) VALUES(?,?,?,?) ";
  if (participants) {
    JSON.parse(participants).map(async (participant) => {
      await db
        .promise()
        .query(text_3, [
          id,
          participant.id,
          participant.email,
          participant.name,
        ])
        .then(([rows]) => rows)
        .catch((err) => {
          throw err;
        });
    });
  }
};
exports.getActivites = async (query) => {
  const { string, dateFrom, dateTo, department } = query;
  let text;
  let vals;
  if (dateFrom && dateTo) {
    text =
      " SELECT a.*, COUNT(a.id) AS participants FROM activities AS a INNER JOIN activity_user AS u ON a.id = u.activity_id    WHERE  department LIKE COALESCE(CONCAT(?,'%'),'%') AND a.start_date >= ? AND a.end_date <= ? AND  (title LIKE COALESCE(CONCAT(?,'%'),'%') OR barcode_id LIKE COALESCE(CONCAT(?,'%'),'%')) GROUP BY a.id;";
    vals = [department, dateFrom, dateTo, string, string];
  } else if (dateFrom) {
    text =
      " SELECT a.*, COUNT(a.id) AS participants FROM activities AS a INNER JOIN activity_user AS u ON a.id = u.activity_id    WHERE  department LIKE COALESCE(CONCAT(?,'%'),'%') AND a.start_date >= ? AND  (title LIKE COALESCE(CONCAT(?,'%'),'%') OR barcode_id LIKE COALESCE(CONCAT(?,'%'),'%')) GROUP BY a.id;";
    vals = [department, dateFrom, string, string];
  } else {
    text =
      " SELECT a.*, COUNT(a.id) AS participants FROM activities AS a INNER JOIN activity_user AS u ON a.id = u.activity_id    WHERE  department LIKE COALESCE(CONCAT(?,'%'),'%') AND  (title LIKE COALESCE(CONCAT(?,'%'),'%') OR barcode_id LIKE COALESCE(CONCAT(?,'%'),'%')) GROUP BY a.id;";
    vals = [department, string, string];
  }
  let res = await db
    .promise()
    .query(text, vals)
    .then(([rows]) => rows)
    .catch((err) => {
      throw err;
    });
  console.log("trtrtr", res);
  return res;
};
