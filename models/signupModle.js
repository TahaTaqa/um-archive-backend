const db = require("../data/db");

exports.signup = async (email, password) => {
  const text = "UPDATE employees SET password = ? WHERE email = ?";
  const vals = [password, email];
  let res = await db
    .promise()
    .query(text, vals)
    .then(([rows]) => rows)
    .catch((err) => {
      throw err;
    });
};
