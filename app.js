const express = require("express");
const app = express();
const cors = require("cors");
const con = require("./data/db");
const httpServer = require("http").createServer(app);
const loginRoutes = require("./routes/loginRoutes");
const adminRoutes = require("./routes/adminRoutes");
const errorHandle = require("./middlewares/errorHandle");
const { hashPassword } = require("./utils/hashPassword");

app.use(cors());
app.use(express.urlencoded({ extended: true }));
app.use(express.json());
app.use("/login", loginRoutes);
app.use("/admin", adminRoutes);
app.use(errorHandle);

httpServer.listen(5000);
