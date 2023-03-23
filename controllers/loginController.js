const {
  findUserByEmail,
  addToken,
  findToken,
  findResetToken,
} = require("../models/commonModle");
const apiError = require("../utils/apiError");
const bcrypt = require("bcrypt");
const jwt = require("jsonwebtoken");
const { reset, resetPassword } = require("../models/loginModel");
const nodemailer = require("nodemailer");
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
            {
              id: user.user_id,
              department: user.department,
              type: user.type,
              email: user.email,
            },
            process.env.SECRET,
            { expiresIn: "180d" }
          );
          let refreashToken = await jwt.sign(
            {
              id: user.user_id,
              department: user.department,
              type: user.type,
              email: user.email,
            },
            process.env.SECRET,
            { expiresIn: "2h" }
          );
          await addToken(user.user_id, token);
          res.status(200).json({
            token: refreashToken,
            id: user.id,
            name: user.name,
            type: user.type,
            email: user.email,
            status: 200,
          });
        }
      }
    }
  } catch (err) {
    next(err);
  }
};

exports.reset = async (req, res, next) => {
  let { email } = req.body;
  try {
    let user = await findUserByEmail(email);
    if (!user) {
      next(apiError.notFound("لايوجد حساب بهذا الاسم"));
      return;
    }
    let token = await jwt.sign({ id: user.user_id }, process.env.SECRET, {
      expiresIn: "1h",
    });
    await reset(user.user_id, token);
    var transporter = nodemailer.createTransport({
      service: "hotmail",
      auth: {
        user: "taha.21csp84@student.uomosul.edu.iq",
        pass: process.env.EMAIL_PASSWORD,
      },
    });

    var mailOptions = {
      from: "taha.21csp84@student.uomosul.edu.iq",
      to: email,
      subject: "تغيير الرمز",
      html: `<p> لتغيير الرمز اضغط  <a href="http://localhost/reset-password:${token}">هنا </a> </p>`,
    };

    // transporter.sendMail(mailOptions, function (error, info) {
    //   if (error) {
    //     console.log(error);
    //   } else {
    //     console.log("Email sent: " + info.response);
    //   }
    // });
    res.status(200).json({ status: 200 });
  } catch (err) {
    next(err);
  }
};
exports.resetPassword = async (req, res, next) => {
  try {
    const { token } = req.query;
    let { password } = req.body;
    const rawToken = token.slice(1);
    const db_token = await findResetToken(rawToken);

    if (!db_token) {
      next(apiError.unauthorized("حدث خطأ"));
      return;
    }
    const valid = jwt.verify(rawToken, process.env.SECRET);
    console.log(valid);
    if (valid) {
      let hashedPassword = await bcrypt.hash(password, 10);
      await resetPassword(valid.id, hashedPassword);
      res.status(201).json({ status: 201 });
    } else {
      next(apiError.unauthorized());
      return;
    }
  } catch (err) {
    next(err);
  }
};
