import express from "express";

import nguoiDungRouter from "./nguoiDungRouter.js";
import anhRouter from "./anhRouter.js";
import binhLuanRouter from "./binhLuanRouter.js";

const rootRouter = express.Router();

rootRouter.use("/user", nguoiDungRouter);
rootRouter.use("/image", anhRouter);
rootRouter.use("/comment", binhLuanRouter);

export default rootRouter;
