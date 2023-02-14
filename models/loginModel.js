const db = require("../data/db");
exports.findUser = async (email) => {
  let text = "SELECT * FROM employees WHERE email = ?";
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
