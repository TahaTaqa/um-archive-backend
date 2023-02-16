const { findUserByEmail, addToken } = require("../models/commonModle");
const apiError = require("../utils/apiError");
const bcrypt = require("bcrypt");
const jwt = require("jsonwebtoken");
exports.login = async (req, res, next) => {
  let { email, password } = req.body;
  try {
    let user = await findUserByEmail(email);
    if (!user) {
      next(apiError.notFound("لا يوجد حساب مسجل بهذا البريد"));
      return;
    } else {
      if (!user.password) {
        next(apiError.redirect("تسجيل لاول مرة"));
        return;
      } else {
        let match = await bcrypt.compare(password, user.password);
        if (!match) {
          next(apiError.unauthorized("الرمز غير صحيح"));
          return;
        } else {
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
          res.status(200).json({
            token: refreashToken,
            id: user.id,
            type: user.type,
            status: 200,
          });
        }
      }
    }
  } catch (err) {
    next(err);
  }
};
