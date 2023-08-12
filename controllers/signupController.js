
const { findUserByEmail, addToken } = require("../models/commonModle");
const apiError = require("../utils/apiError");
const bycrypt = require("bcrypt");
const {
  signup,
  findCode,
  deleteCode,
  updateCode,
} = require("../models/signupModle");
const jwt = require("jsonwebtoken");
const { customAlphabet } = require("nanoid");
const nodemailer = require("nodemailer");
exports.signup = async (req, res, next) => {
  const { email, password, code } = req.body;
console.log(code,email)
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
console.log(data)
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

exports.resendCode = async (req, res, next) => {
  console.log("ger");
  try {
    const { email } = req.body;
    const user = await findUserByEmail(email);
    if (!user) {
      next(apiError.notFound("لا يوجد حساب مسجل"));
      return;
    } else {
      if (user.password) {
        next(apiError.duplicated("الحساب مسجل مسبقاََ"));
        return;
      }
      console.log(user.password);
      let customNumber = await customAlphabet(
        "0123456789abcdefghigklmnopqwxyz",
        6
      )();
      updateCode(email, customNumber);
      var transporter = nodemailer.createTransport({
        service: "gmail",
        auth: {
          user: process.env.EMAIL,
          pass: process.env.EMAIL_PASSWORD,
        },
      });

      var mailOptions = {
        from: process.env.EMAIL,
        to: email,
        subject: `رسالة من ${req.body.email}`,
        html: `<p>الرمز الخاص بك هو <br/> ${customNumber} <br/>
        نظام ارشفة نشاطات المنتسبين <br/>
        هذا النظام هو جزء من متطلبات نيل شهادة الماجستير في تخصص
         علوم الحاسوب من قبل الطالب<br/>
        طه عادل طه طاقة<br/>
        بإشراف<br/>
        أ. م. د. اياد حسين عبدالقادر <br/>
يرجى الدخول إلى الرابط أدناه وإكمال عملية تكوين الحساب الخاص بك .. لطفا <br/>
<a href='http://144.86.228.218:9888'>http://144.86.228.218:9888</a></p>`,
      };

      await transporter.sendMail(mailOptions, function (error, info) {
        if (error) {
          console.log("error", error);
        } else {
          console.log("Email sent: " + info.response);
        }
      });
      res.status(201).json({ message: "successful", status: 201 });
    }
  } catch (err) {
    next(err);
  }
};
