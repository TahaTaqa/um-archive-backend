const db = require("../data/db");
exports.findUserByEmail = async (email) => {
  let text = "SELECT * FROM users WHERE email = ?";
  let vals = [email];

  let res = await db
    .promise()
    .query(text, vals)
    .then(([rows]) => rows)
    .catch((err) => {
      throw err;
    });
  console.log(res.length);
  return res.length ? res[0] : false;
};

exports.findUserById = async (id) => {
  let text = "SELECT * FROM users WHERE user_id = ?";
  let vals = [id];

  let res = await db
    .promise()
    .query(text, vals)
    .then(([rows]) => rows)
    .catch((err) => {
      throw err;
    });

  return res.length ? res[0] : false;
};
exports.findToken = async (user_id) => {
  let text = "SELECT token FROM user_token WHERE user_id = ?";
  let vals = [user_id];
  let res = await db
    .promise()
    .query(text, vals)
    .then(([rows]) => rows)
    .catch((err) => {
      throw err;
    });
  return res.length ? res[0] : false;
};
exports.addToken = async (id, token) => {
  const text = "INSERT INTO user_token (user_id,token) VALUES(?,?)";
  const vals = [id, token];
  let res = await db
    .promise()
    .query(text, vals)
    .then(([rows]) => rows)
    .catch((err) => {
      throw err;
    });
};

exports.findUserByEmailNoId = async (email, id) => {
  let text = "SELECT * FROM users WHERE email = ? AND user_id != ?";
  let vals = [email, id];

  let res = await db
    .promise()
    .query(text, vals)
    .then(([rows]) => rows)
    .catch((err) => {
      throw err;
    });
  console.log(res);
  return res.length ? res[0] : false;
};
exports.findResetToken = async (token) => {
  let text = `SELECT * FROM reset_token WHERE token = ?`;
  let vals = [token];

  let res = await db
    .promise()
    .query(text, vals)
    .then(([rows]) => rows)
    .catch((err) => {
      throw err;
    });
  console.log(res);
  return res.length ? res[0] : false;
};
