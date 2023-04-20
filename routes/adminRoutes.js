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
  backup,
  getUserActivities,
} = require("../controllers/adminController");

router = express.Router();
router.post("/add-user", addUser);
router.post("/add-activity", addActivity);
router.post("/send-email", sendEmail);
router.get("/get-names", getNames);
router.get("/get-activities", getActivites);
router.get("/get-users", getUsers);
router.get("/get-user-activities", getUserActivities);
router.get("/get-backup", backup);
router.delete("/delete-activity", deleteActivity);
router.delete("/delete-user", deleteUser);
router.put("/update-activity", updateActivity);
router.put("/update-user", updateUser);
module.exports = router;
