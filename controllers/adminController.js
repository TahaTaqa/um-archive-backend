const {
  addUser,
  getNames,
  addActivity,
  getActivites,
} = require("../models/adminModle");
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
