const jwt = require("jsonwebtoken");
const apiError = require("../utils/apiError");
const secret = process.env.SECRET;
const Auth = (req, res, next) => {
  token = req.get("Authorization");

  if (!token) {
    next(apiError.unauthorized("unauthorized"));
    return res.end();
  }

  try {
    rawToken = token.split(" ")[1];
    const decoded = jwt.verify(rawToken, secret);

    req.id = decoded.id;
    req.userType = decoded.type;

    if (!decoded) {
      next(apiError.unauthorized("unauthorized"));
    }
  } catch (err) {
    console.log(err);
    if (err.message !== "jwt expired") {
      next(apiError.unauthorized("unauthorized"));
    } else {
      next(apiError.unauthorized("session expired"));
    }
  }

  next();
};

module.exports = strictAuth;
