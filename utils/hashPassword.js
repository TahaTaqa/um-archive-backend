const bcrypt = require("bcrypt");
const saltRounds = 10;
exports.hashPassword = async (plainPassword) => {
  try {
    let hash = await bcrypt.hash(plainPassword, saltRounds);
    return hash;
  } catch (err) {
    throw err;
  }
};
