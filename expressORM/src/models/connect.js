import { Sequelize } from "sequelize";
import config from "../config/config.js";

const sequelize = new Sequelize(
  config.db_database,
  config.db_user,
  config.db_pass,
  {
    host: config.db_host,
    dialect: config.db_dialect,
    port: config.db_port,
    logging: false, // Tắt logging (tùy chọn)
  }
);

// Test kết nối
sequelize
  .authenticate()
  .then(() => {
    console.log("Connect data sucessfully!");
  })
  .catch((err) => {
    console.error("Error when connect data:", err);
  });

export default sequelize;

// yarn add sequelize
// yarn add sequelize-auto
// npx sequelize-auto -h localhost -d node47_youtube -u root -x 123456 -p 3307 --dialect mysql -o src/models -l esm
