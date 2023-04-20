const nodemailer = require("nodemailer");
const path = require("path");
const handlebars = require("handlebars");
const fs = require("fs");

exports.updateEmailNoti = async (emails, title, barcode) => {
  var transporter = nodemailer.createTransport({
    service: "gmail",
    auth: {
      user: process.env.EMAIL,
      pass: process.env.EMAIL_PASSWORD,
    },
  });
  var mailOptions = {
    from: process.env.EMAIL,
    to: emails,
    subject: "اعلام بتعديل نشاط",
    text: `${title} تم تعديل النشاط بعنوان  \n ${barcode} الرمز الشريطي `,
  };

  transporter.sendMail(mailOptions, function (error, info) {
    if (error) {
      console.log(error);
    } else {
      console.log("Email sent: " + info.response);
    }
  });
};
