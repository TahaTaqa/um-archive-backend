const { findUserByEmail } = require("../models/commonModle");
const apiError = require("../utils/apiError");
const bcrypt = require("bcrypt");
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
          res.status(200).send();
        }
      }
    }
  } catch (err) {
    next(err);
  }
};
