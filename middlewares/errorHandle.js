const apiError = require("../utils/apiError");
const errorHandle = (err, req, res, next) => {
  console.log(err.message);
  if (err instanceof apiError) {
    res.status(err.status).json({ message: err.message, status: err.status });
  } else {
    res.status(500).json({ message: "somthing went wrong", stats: 500 });
  }
};
module.exports = errorHandle;
