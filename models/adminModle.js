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
exports.addActivity = async (data) => {
  let { title, location, summary, dateFrom, dateTo, orderDate, barcode } = data;
  barcode = barcode || (await customAlphabet("1234567890", 12)());
  let text =
    "INSERT INTO activities (title,location,summary,start_date,end_date,order_date,barcode_id) VALUES(?,?,?,?,?,?,?)";
  let vals = [title, location, summary, dateFrom, dateTo, orderDate, barcode];
  let res = await db
    .promise()
    .query(text, vals)
    .then(([rows]) => rows)
    .catch((err) => {
      throw err;
    });
  console.log(res);
};
