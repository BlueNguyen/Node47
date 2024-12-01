


// yarn add sequelize
import { Sequelize } from "sequelize";
import config from "../config/config.js";

const sequelize = new Sequelize(
  config.db_database,
  config.db_user,
  config.db_pass,
  {
    host: config.db_host,
    dialect: config.db_dialect, // mysql
    port: config.db_port, // 3307
    logging: console.log, // Bật logging để kiểm tra
  }
);

// Kiểm tra kết nối
sequelize
  .authenticate()
  .then(() => {
    console.log("Database connection established successfully!");
  })
  .catch((err) => {
    console.error("Error connecting to the database: ", err);
  });

export default sequelize;

// yarn add sequelize-auto

// yarn sequelize-auto -h localhost -d db_node47 -u root -x 1234 -p 3306 --dialect mysql -o src/models -l esm