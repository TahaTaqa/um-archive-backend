const { addUser, getNames, addActivity } = require("../models/adminModle");
const { findUserByEmail } = require("../models/commonModle");
const multer = require("multer");
const multerHelper = require("../utils/multerHelper");
const apiError = require("../utils/apiError");

const images = multer({
  storage: multerHelper.imageStorage,
  fileFilter: multerHelper.imageFilter,
  limits: { fileSize: 4000000 },
}).array("images", "10");

exports.addUser = async (req, res, next) => {
  try {
    if (await findUserByEmail(req.body.email)) {
      next(apiError.duplicated("يوجد حساب مسجل لهذا البريد"));

      return;
    }
    await addUser(req.body);
    res.status(201).json({ status: 201 });
  } catch (err) {
    next(err);
  }
};
exports.addActivity = (req, res, next) => {
  images(req, res, async (err) => {
    if (err) {
      console.log(err);
    } else {
      addActivity(req.body, req.files);
      res.status(201).json({ status: 201 });
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
