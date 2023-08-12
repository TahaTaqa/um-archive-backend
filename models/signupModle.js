const db = require("../data/db");

exports.signup = async (email, password) => {
  const text = "UPDATE users SET password = ? WHERE email = ?";
  const vals = [password, email];
  let res = await db
    .promise()
    .query(text, vals)
    .then(([rows]) => rows)
    .catch((err) => {
      throw err;
    });
};
exports.findCode = async (email) => {
  console.log("email", email);
  const text = "SELECT code FROM user_code WHERE email = ?";
  const vals = [email];
  let res = await db
    .promise()
    .query(text, vals)
    .then(([rows]) => rows)
    .catch((err) => {
      throw err;
    });
  return res;
};
exports.deleteCode = async (email) => {
  const text = "delete FROM user_code WHERE email = ?";
  const vals = [email];
  await db
    .promise()
    .query(text, vals)
    .then(([rows]) => rows)
    .catch((err) => {
      throw err;
    });
};
exports.updateCode = async (email, code) => {
  let text_2 = "INSERT INTO user_code (code,email) VALUES(?,?) ON DUPLICATE KEY UPDATE  code = VALUES(code)";
  let vals_2 = [code, email];

  await db
    .promise()
    .query(text_2, vals_2)
    .then(([rows]) => rows)
    .catch((err) => {
      throw err;
    });
};
