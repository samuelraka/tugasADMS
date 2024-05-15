import express from "express";
import cors from "cors";
import bodyParser from "body-parser";
import DBRoutes from "./routes/DBRoutes.js";
import { fileURLToPath } from 'url';
import path from 'path';
import session from "express-session";

const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);

const app = express();

app.use(express.json());
app.use(cors());
app.use(session({
    secret: 'yourSecretKey', // Gantilah dengan kunci rahasia Anda
    resave: false,
    saveUninitialized: true,
    cookie: { secure: false } // Pastikan menggunakan secure: true pada produksi dengan HTTPS
}));
app.use(bodyParser.json());
app.use(DBRoutes)

app.use(express.static(path.join(__dirname, '../FrontEnd')));

app.get('/', (req, res) => {
    res.sendFile(path.join(__dirname, '../FrontEnd/index.html'));
});

app.listen(3000, ()=> console.log('server running at port 3000'));