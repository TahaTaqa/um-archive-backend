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
  } = data;
  barcode = barcode || customAlphabet("1234567890", 12)();
  let text =
    "INSERT INTO activities (title,location,summary,start_date,end_date,order_date,barcode_id) VALUES(?,?,?,?,?,?,?); ";
  let vals = [title, location, summary, dateFrom, dateTo, orderDate, barcode];
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
