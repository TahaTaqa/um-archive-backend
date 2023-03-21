const db = require("../data/db");
exports.findUser = async (email) => {
  let text = "SELECT * FROM users WHERE email = ?";
  let vals = [email];

  let res = await db
    .promise()
    .query(text, vals)
    .then(([rows]) => rows)
    .catch((err) => {
      throw err;
    });
  console.log(res);
  return res;
};

exports.reset = async (user_id, token) => {
  let text = `REPLACE INTO reset_token (user_id, token) VALUES(?,?);  `;
  let vals = [user_id, token];
  let res = await db
    .promise()
    .query(text, vals)
    .then(([rows]) => rows)
    .catch((err) => {
      throw err;
    });
  console.log(res);
  return res;
};

exports.resetPassword = async (id, password) => {
  let text = `UPDATE users SET password = ? WHERE user_id = ?`;
  let vals = [password, id];
  let res = await db
    .promise()
    .query(text, vals)
    .then(([rows]) => rows)
    .catch((err) => {
      throw err;
    });
  await db
    .promise()
    .query(`DELETE  FROM  reset_token WHERE user_id = ?`, [id])
    .then(([rows]) => rows)
    .catch((err) => {
      throw err;
    });
  return res;
};
