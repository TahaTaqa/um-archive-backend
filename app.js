const express = require("express");
const app = express();
const cors = require("cors");
const con = require("./data/db");
const httpServer = require("http").createServer(app);
const loginRoutes = require("./routes/loginRoutes");
const signupRoutes = require("./routes/signupRoutes");
const adminRoutes = require("./routes/adminRoutes");
const errorHandle = require("./middlewares/errorHandle");
const { hashPassword } = require("./utils/hashPassword");
const { refresh } = require("./middlewares/refresh");

app.use(cors());
app.use(express.urlencoded({ extended: true }));
app.use(express.json());
app.use("/refresh", refresh);
app.use("/login", loginRoutes);
app.use("/signup", signupRoutes);
app.use("/admin", adminRoutes);
app.use(errorHandle);

httpServer.listen(5000);