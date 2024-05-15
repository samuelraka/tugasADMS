import express from "express";
import cors from "cors";
import bodyParser from "body-parser";
import DBRoutes from "./routes/DBRoutes.js";
import db from "./config/database.js";
import { fileURLToPath } from 'url';
import path from 'path';

const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);

const app = express();


try {
    await db.authenticate();
    console.log('Database Connected..');
} catch (error) {
    console.error(error);
}

app.use(cors());
app.use(bodyParser.json());
app.use(DBRoutes)
app.use(express.json());
app.use(express.static(path.join(__dirname, '../FrontEnd')));

app.get('/', (req, res) => {
    res.sendFile(path.join(__dirname, '../FrontEnd/index.html'));
});

app.listen(3000, ()=> console.log('server running at port 3000'));