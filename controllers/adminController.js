const { addUser } = require("../models/adminModle");
const { findUserByEmail } = require("../models/commonModle");
const apiError = require("../utils/apiError");

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
