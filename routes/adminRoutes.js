const express = require("express");
const {
  addUser,
  addActivity,
  getNames,
} = require("../controllers/adminController");

router = express.Router();
router.post("/add-user", addUser);
router.post("/add-activity", addActivity);
router.get("/get-names", getNames);
module.exports = router;
