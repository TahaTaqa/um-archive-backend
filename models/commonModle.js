const db = require("../data/db");
exports.findUserByEmail = async (email) => {
  let text = "SELECT * FROM employees WHERE email = ?";
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
  let text = "SELECT * FROM employees WHERE id = ?";
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
