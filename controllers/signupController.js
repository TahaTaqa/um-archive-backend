const { findUserByEmail, addToken } = require("../models/commonModle");
const apiError = require("../utils/apiError");
const bycrypt = require("bcrypt");
const { signup, findCode, deleteCode } = require("../models/signupModle");
const jwt = require("jsonwebtoken");

exports.signup = async (req, res, next) => {
  const { email, password, code } = req.body;
  try {
    const user = await findUserByEmail(email);
    if (!user) {
      next(apiError.notFound("لا يوجد حساب مسجل"));
      return;
    } else {
      if (user.password) {
        next(apiError.duplicated("الحساب مسجل مسبقاََ"));
        return;
      } else {
        let data = await findCode(email);
        if (code !== data[0].code) {
          next(apiError.unauthorized("حدث خطأ"));
          return;
        }
        let hashedPassword = await bycrypt.hash(password, 10);

        let token = await jwt.sign(
          { id: user.user_id, department: user.department, type: user.type },
          process.env.SECRET,
          { expiresIn: "180d" }
        );
        let refreashToken = await jwt.sign(
          { id: user.user_id, department: user.department, type: user.type },
          process.env.SECRET,
          { expiresIn: "2h" }
        );
        await addToken(user.user_id, token);
        await signup(email, hashedPassword);
        await deleteCode(email);
        res.status(201).json({
          token: refreashToken,
          id: user.user_id,
          type: user.type,
          status: 201,
        });
      }
    }
  } catch (err) {
    next(err);
  }
};
