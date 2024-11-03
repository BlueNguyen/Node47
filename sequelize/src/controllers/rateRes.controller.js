import sequelize from "../models/connect.js";
import initModels from "../models/init-models.js";

const model = initModels(sequelize);

const rateResByRes = async (req, res) => {
  try {
    let { res_id } = req.params; // Lấy ID của nhà hàng từ tham số
    let ratings = await model.rate_res.findAll({
      where: {
        res_id,
      },
    });
    return res.status(200).json(ratings);
  } catch (error) {
    console.error("Error fetching ratings by restaurant:", error);
    return res.status(500).json({ message: "Internal server error" });
  }
};

const rateResByUser = async (req, res) => {
  try {
    let { user_id } = req.params; // Lấy ID của người dùng từ tham số
    let ratings = await model.rate_res.findAll({
      where: {
        user_id,
      },
    });
    return res.status(200).json(ratings);
  } catch (error) {
    console.error("Error fetching ratings by user:", error);
    return res.status(500).json({ message: "Internal server error" });
  }
};

const rateRes = async (req, res) => {
  try {
    let { user_id, res_id, rating, comment } = req.body; // Lấy thông tin từ body

    // Tạo đánh giá mới
    let newRating = await model.rate_res.create({
      user_id,
      res_id,
      rating,
      comment,
      date_rate: new Date(), // Thêm ngày đánh giá
    });

    return res.status(201).json({
      message: "Rating successfully added!",
      data: newRating,
    });
  } catch (error) {
    console.error("Error adding rating:", error);
    return res.status(500).json({ message: "Internal server error" });
  }
};

export { rateResByRes, rateResByUser, rateRes };
