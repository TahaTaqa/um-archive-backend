const express = require("express");
const { signup, resendCode } = require("../controllers/signupController");

router = express.Router();

router.post("/", signup);
router.post("/resend-code", resendCode);

module.exports = router;
