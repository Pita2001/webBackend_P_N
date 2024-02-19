module.exports = {
  HOST: "localhost",
  USER: "root",
  PASSWORD: "",
  DB: "web_zaro_niki_peti",
  dialect: "mysql",
  pool: {
    max: 5,
    min: 0,
    acquire: 30000,
    idle: 10000
  }
};
