// src/sync.js
import sequelize from "./models/connect.js";
import initModels from "./models"; // Import các mô hình
import dotenv from "dotenv";

dotenv.config();

async function syncDatabase() {
  try {
    // Đồng bộ hóa tất cả các mô hình
    await sequelize.sync({ force: true }); // `force: true` sẽ xóa bảng cũ và tạo lại bảng mới
    console.log("Database synchronized successfully!");
  } catch (error) {
    console.error("Error syncing database:", error);
  }
}

syncDatabase();
