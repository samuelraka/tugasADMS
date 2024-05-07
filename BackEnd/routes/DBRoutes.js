import express from "express";
import {
    editDetail,
    editMeja,
    editMenu,
    editPelanggan,
    editTransaksi,
    hapusDetail,
    hapusMeja,
    hapusMenu,
    hapusPelanggan,
    hapusTransaksi,
    tambahDetail,
    tambahMeja,
    tambahMenu,
    tambahPelanggan,
    tambahTransaksi,
    getMeja,
    getMenu
} from "../controller/DBController.js";

const router = express.Router();

router.get('/menu', getMenu);
router.get('/meja', getMeja);
router.patch('/editDetail', editDetail);
router.patch('/editMeja', editMeja);
router.patch('/editMenu', editMenu);
router.patch('/editPelanggan', editPelanggan);
router.patch('/editTransaksi', editTransaksi);
router.delete('/hapusDetail', hapusDetail);
router.delete('/hapusMeja', hapusMeja);
router.delete('/editMenu', hapusMenu);
router.delete('/hapusPelanggan', hapusPelanggan);
router.delete('/hapusTransaksi', hapusTransaksi);
router.post('/tambahDetail', tambahDetail);
router.post('/tambahMeja', tambahMeja);
router.post('/tambahMenu', tambahMenu);
router.post('/tambahPelanggan', tambahPelanggan);
router.post('/tambahTransaksi', tambahTransaksi);

export default router;