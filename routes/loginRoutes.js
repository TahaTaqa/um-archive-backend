const express = require("express");
const {
  login,
  reset,
  resetPassword,
} = require("../controllers/loginController");

router = express.Router();

router.post("/", login);
router.post("/reset", reset);
router.put("/reset-password", resetPassword);
module.exports = router;
