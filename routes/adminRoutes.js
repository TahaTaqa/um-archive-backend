const express = require("express");
const {
  addUser,
  addActivity,
  getNames,
  getActivites,
  deleteActivity,
  updateActivity,
  getUsers,
  deleteUser,
  updateUser,
  sendEmail,
} = require("../controllers/adminController");

router = express.Router();
router.post("/add-user", addUser);
router.post("/add-activity", addActivity);
router.post("/send-email", sendEmail);
router.get("/get-names", getNames);
router.get("/get-activities", getActivites);
router.get("/get-users", getUsers);
router.delete("/delete-activity", deleteActivity);
router.delete("/delete-user", deleteUser);
router.put("/update-activity", updateActivity);
router.put("/update-user", updateUser);
module.exports = router;
