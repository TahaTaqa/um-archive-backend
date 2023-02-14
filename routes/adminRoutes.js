const express = require("express");
const { addUser } = require("../controllers/adminController");

router = express.Router();
router.post("/add-user", addUser);
module.exports = router;
