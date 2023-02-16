const { findUserByEmail, addToken } = require("../models/commonModle");
const apiError = require("../utils/apiError");
const bycrypt = require("bcrypt");
const { signup } = require("../models/signupModle");
const jwt = require("jsonwebtoken");

exports.signup = async (req, res, next) => {
  const { email, password } = req.body;
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
        let hashedPassword = await bycrypt.hash(password, 10);

        let token = await jwt.sign(
          { id: user.id, department: user.department, type: user.type },
          process.env.SECRET,
          { expiresIn: "180d" }
        );
        let refreashToken = await jwt.sign(
          { id: user.id, department: user.department, type: user.type },
          process.env.SECRET,
          { expiresIn: "2h" }
        );
        await addToken(user.id, token);
        await signup(email, hashedPassword);
        res.status(201).json({
          token: refreashToken,
          id: user.id,
          type: user.type,
          status: 201,
        });
      }
    }
  } catch (err) {
    next(err);
  }
};
