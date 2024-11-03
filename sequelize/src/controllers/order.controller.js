import sequelize from "../models/connect.js"; 
import initModels from "../models/init-models.js"; 
const model = initModels(sequelize); 

const order = async (req, res) => {
  try {
    // Lấy dữ liệu từ body của request
    const { food_id, user_id, amount, arr_sub_id } = req.body;

    // Kiểm tra xem tất cả các trường bắt buộc có được cung cấp không
    if (!food_id || !user_id || !amount) {
      return res.status(400).json({ message: "Missing required fields" });
    }

    // Tạo một đơn hàng mới
    const newOrder = await model.orders.create({
      food_id,
      user_id,
      amount,
      arr_sub_id,
    });

    return res.status(201).json({
      message: "Order placed successfully!",
      data: newOrder,
    });
  } catch (error) {
    console.error("Error placing order:", error);
    return res.status(500).json({ message: "Internal server error" });
  }
};

export { order };
