const express = require("express");
const { signup } = require("../controllers/signupController");

router = express.Router();

router.post("/", signup);

module.exports = router;
