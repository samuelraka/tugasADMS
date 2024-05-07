import express from "express";
import cors from "cors";
import DBRoutes from "./routes/DBRoutes.js";
import db from "./config/database.js";

const app = express();


try {
    await db.authenticate();
    console.log('Database Connected..');
} catch (error) {
    console.error(error);
}

app.use(DBRoutes)

app.listen(3000, ()=> console.log('server running at port 3000'));