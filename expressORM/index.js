import express from "express";
import cors from "cors";
import rootRoutes from "./src/routes/rootRoutes.js";

const app = express();

app.use(cors());
app.use(express.json());

app.use(rootRoutes);

app.listen(8080);
