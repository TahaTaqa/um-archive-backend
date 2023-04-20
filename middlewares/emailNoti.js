const nodemailer = require("nodemailer");
const path = require("path");
const handlebars = require("handlebars");
const fs = require("fs");

exports.sendEmailNotification = async (emails, title, orderDate, barcode) => {
  const filePath = path.join(__dirname, "../templates/index.html");
  const source = fs.readFileSync(filePath, "utf-8").toString();
  const template = handlebars.compile(source);
  const replacements = {
    id: barcode,
    title: title,
    date: orderDate,
  };
  const htmlToSend = template(replacements);

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
    subject: "اعلام بإضافة نشاط",
    html: htmlToSend,

    attachments: [
      {
        filename: "logo.jpg",
        path: "templates/logo.jpg",
        cid: "img",
      },
    ],
  };

  transporter.sendMail(mailOptions, function (error, info) {
    if (error) {
      console.log(error);
    } else {
      console.log("Email sent: " + info.response);
    }
  });
};
