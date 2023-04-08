const {
  addUser,
  getNames,
  addActivity,
  getActivites,
  deleteActivity,
  updateActivity,
  getUsers,
  deleteUser,
  updateUser,
} = require("../models/adminModle");
const {
  findUserByEmail,
  findUserByEmailNoId,
} = require("../models/commonModle");
const multer = require("multer");
const multerHelper = require("../utils/multerHelper");
const apiError = require("../utils/apiError");
const { dbBackup } = require("../middlewares/db_backup");
const nodemailer = require("nodemailer");
const path = require("path");
const fs = require("fs");
const images = multer({
  storage: multerHelper.fileStorage,
  fileFilter: multerHelper.fileFilter,
  limits: { fileSize: 4000000 },
}).fields([
  { name: "images", maxCount: 10 },
  { name: "pdf", maxCount: 10 },
]);
const emailObj = multer({
  storage: multerHelper.fileStorage,
  fileFilter: multerHelper.fileFilter,
  limits: { fileSize: 10000000 },
}).fields([
  {
    name: "file",
    maxCount: 1,
  },
  {
    name: "image",
    maxCount: 1,
  },
]);
exports.addUser = async (req, res, next) => {
  try {
    if (await findUserByEmail(req.body.email)) {
      next(apiError.duplicated("يوجد حساب مسجل لهذا البريد"));

      return;
    }
    await addUser(req.body);

    if (req.userType !== "admin") {
      next(apiError.unauthorized());
      return;
    }
    res.status(201).json({ status: 201 });
  } catch (err) {
    next(err);
  }
};
exports.addActivity = (req, res, next) => {
  if (req.userType !== "admin") {
    next(apiError.unauthorized());
    return;
  }
  images(req, res, async (err) => {
    if (err) {
      next(err);
    } else {
      try {
        await addActivity(req.body, req.files);

        res.status(201).json({ status: 201 });
        // res.end();
      } catch (err) {
        next(err);
      }
    }
  });
};
exports.getNames = async (req, res, next) => {
  try {
    const names = await getNames(req.query.string);
    res.json(names);
  } catch (err) {
    next(err);
  }
};

exports.getActivites = async (req, res, next) => {
  let userType = req.userType;
  let userDepartment = req.userDepartment;
  let userId = req.id;
  try {
    const data = await getActivites(
      req.query,
      userType,
      userDepartment,
      userId
    );

    res.json(data);
  } catch (err) {
    next(err);
  }
};
exports.deleteActivity = async (req, res, next) => {
  try {
    await deleteActivity(req.body.activityId);
    res.status(200).json({ status: 200 });
  } catch (err) {
    next(err);
  }
};
exports.deleteUser = async (req, res, next) => {
  try {
    await deleteUser(req.body.userId);
    res.status(200).json({ status: 200 });
  } catch (err) {
    next(err);
  }
};
exports.updateActivity = async (req, res, next) => {
  if (req.userType !== "admin") {
    next(apiError.unauthorized());
    return;
  }
  images(req, res, async (err) => {
    if (err) {
      next(err);
    } else {
      try {
        await updateActivity(req.body, req.files);
        res.status(200).json({ status: 204 });
      } catch (err) {
        next(err);
      }
    }
  });
};

exports.getUsers = async (req, res, next) => {
  if (req.userType === "user") {
    next(apiError.unauthorized());
    return;
  }
  try {
    let data = await getUsers(req.query);
    console.log(data, req.query);
    res.status(200).json(data);
  } catch (err) {
    next(err);
  }
};

exports.updateUser = async (req, res, next) => {
  console.log(req.body);
  if (req.userType !== "admin") {
    next(apiError.unauthorized());
    return;
  }
  if (await findUserByEmailNoId(req.body.email, req.body.id)) {
    next(apiError.duplicated("يوجد حساب مسجل لهذا البريد"));

    return;
  }
  try {
    await updateUser(req.body);
    res.status(201).json({ status: 201 });
  } catch (err) {
    next(err);
  }
};
exports.sendEmail = async (req, res, next) => {
  emailObj(req, res, async (err) => {
    if (err) {
      next(err);
    } else {
      var transporter = nodemailer.createTransport({
        service: "hotmail",
        auth: {
          user: "taha.21csp84@student.uomosul.edu.iq",
          pass: process.env.EMAIL_PASSWORD,
        },
      });

      var mailOptions = {
        from: "taha.21csp84@student.uomosul.edu.iq",
        to: "ibn.maher.96@gmail.com",
        subject: `رسالة من ${req.body.email}`,
        text: `${req.body.subject}`,

        attachments: [],
      };
      if (req.files.file) {
        mailOptions.attachments.push({
          filename: `${req.files.file[0].originalname}`,
          path: req.files.file[0].path,
          contentType: "application/pdf",
        });
      }
      if (req.files.image) {
        mailOptions.attachments.push({
          filename: `${req.files.image[0].originalname}`,
          path: req.files.image[0].path,
          contentType: "image/*",
        });
      }
      await transporter.sendMail(mailOptions, function (error, info) {
        if (error) {
          next(err);
        } else {
          console.log("Email sent: " + info.response);
        }
      });
    }
    if (req.files.file) {
      setTimeout(() => {
        fs.unlink(req.files.file[0].path, (err) => console.log(err));
      }, [5000]);
    }
    if (req.files.image) {
      setTimeout(() => {
        fs.unlink(req.files.image[0].path, (err) => console.log(err));
      }, [5000]);
    }
  });

  res.status(200).json({ status: 200 });
};
exports.backup = async (req, res, next) => {
  try {
    await dbBackup();
    res.set("Content-Disposition", `attachment; filename="dump.sql"`);
    res.status(200).download(path.join(__dirname, "../backup/dump.sql"));
  } catch (err) {
    next(err);
  }
};
