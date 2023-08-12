const mysqldump = require("mysqldump");
exports.dbBackup = async () =>
  await mysqldump({
    connection: {
      host: "localhost",
      user: "taha",
      database: "archive",
      password: process.env.PASSWORD,
    },
    dumpToFile: "./backup/dump.sql",
  });
