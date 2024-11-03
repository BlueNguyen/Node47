import sequelize from "../models/connect.js";
import initModels from "../models/init-models.js";

const model = initModels(sequelize);

const likeResByResId = async (req, res) => {
    try {
        let {res_id} = req.params;
        let likeRes = await model.rate_res.findAll({
            where: {
                res_id
            }
        })
        return res.status(200).json(likeRes);
    } catch (error) {
        return res.status(500).json({message: "Internal server error"});
    }
}

const likeResByUserId = async (req, res) => {
  try {
    let { user_id } = req.params;
    let likeResUser = await model.rate_res.findAll({
      where: {
        user_id,
      },
    });
    return res.status(200).json(likeResUser);
  } catch (error) {
    return res.status(500).json({ message: "Internal server" });
  }
};

const likeRes = async (req, res) => {
  try {
    let { user_id, res_id } = req.body || {};

    if (!user_id || !res_id) {
      return res
        .status(400)
        .json({ message: "Thiếu user_id hoặc res_id trong body" });
    }

    // Kiểm tra nếu đã có like từ user này cho nhà hàng này chưa
    let existingLike = await model.rate_res.findOne({
      where: {
        user_id,
        res_id,
      },
    });

    if (existingLike) {
      return res.status(400).json({ message: "User liked this restaurant" });
    }

    // create like mới
    let newLike = await model.rate_res.create({
      user_id,
      res_id,
      date_rate: new Date(), 
    });

    return res.status(201).json({
      message: "Like successfully!",
      data: newLike,
    });
  } catch (error) {
    console.error("error when like restaurant:", error);
    return res.status(500).json({ message: "Internal server error" });
  }
};

const dislikeRes = async (req, res) => {
  try {
    // Lấy user_id và res_id từ params hoặc body
    const { user_id, res_id } = req.body;

    if (!user_id || !res_id) {
      return res
        .status(400)
        .json({ message: "Thiếu user_id hoặc res_id trong body" });
    }

    // Kiểm tra xem bản ghi like có tồn tại không
    const existingLike = await model.rate_res.findOne({
      where: {
        user_id,
        res_id,
      },
    });

    if (!existingLike) {
      return res
        .status(404)
        .json({ message: "Không tìm thấy like của user này cho nhà hàng này" });
    }

    // Xóa bản ghi like
    await model.rate_res.destroy({
      where: {
        user_id,
        res_id,
      },
    });

    return res.status(200).json({
      message: "Dislike created!",
    });
  } catch (error) {
    console.error("error when dislike restaurant:", error.message);
    return res
      .status(500)
      .json({ message: "error server", error: error.message });
  }
};

export {
    likeResByResId,
    likeResByUserId,
    likeRes,
    dislikeRes,
}