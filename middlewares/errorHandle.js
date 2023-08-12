const apiError = require("../utils/apiError");
const errorHandle = (err, req, res, next) => {
  console.log(err);
  if (err.message === "File too large") {
    console.log("dwdwd", "dwdwd");
    res.status(403).json({ message: "حجم الملف كبير", status: 403 });
  } else if (err instanceof apiError) {
    res.status(err.status).json({ message: err.message, status: err.status });
  } else {
    res.status(500).json({ message: "somthing went wrong", stats: 500 });
  }
};
module.exports = errorHandle;
