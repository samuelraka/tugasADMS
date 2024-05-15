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
router.patch('/editDetail/:id_detail', editDetail);
router.patch('/editMeja/:id_meja', editMeja);
router.patch('/editMenu/:id_menu', editMenu);
router.patch('/editPelanggan/:id_pelanggan', editPelanggan);
router.patch('/editTransaksi/:id_transaksi', editTransaksi);
router.delete('/hapusDetail/:id_detail', hapusDetail);
router.delete('/hapusMeja/:id_meja', hapusMeja);
router.delete('/hapustMenu/:id_menu', hapusMenu);
router.delete('/hapusPelanggan/:id_pelanggan', hapusPelanggan);
router.delete('/hapusTransaksi/:id_transaksi', hapusTransaksi);
router.post('/tambahDetail', tambahDetail);
router.post('/tambahMeja', tambahMeja);
router.post('/tambahMenu', tambahMenu);
router.post('/tambahPelanggan', tambahPelanggan);
router.post('/tambahTransaksi', tambahTransaksi);

export default router;