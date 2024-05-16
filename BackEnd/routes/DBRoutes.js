import express, { Router } from "express";
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
    tambahMeja,
    tambahMenu,
    tambahPelanggan,
    tambahTransaksi,
    getMeja,
    getMenu,
    tampilkan_detail_pembelian,
    getSessionIdTransaksi
} from "../controller/DBController.js";

const router = express.Router();

router.get('/menu', getMenu);
router.get('/meja', getMeja);
router.get('/detail-pembelian', async (req, res) => {
    try {
        // Ambil id_transaksi dari sesi
        const idTransaksi = req.session.id_transaksi;

        if (!idTransaksi) {
            return res.status(401).json({ message: 'Id transaksi tidak ditemukan dalam sesi' });
        }

        // Panggil fungsi tampilkanDetailPembelian dengan id_transaksi dari sesi
        const detailPembelian = await tampilkan_detail_pembelian(idTransaksi);

        // Kirim detail pembelian sebagai respons
        res.status(200).json({ detail_pembelian: detailPembelian });
    } catch (error) {
        res.status(500).json({ message: error.message });
    }
});
router.get('/get-session-id-transaksi',getSessionIdTransaksi)
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
router.post('/tambahMeja', tambahMeja);
router.post('/tambahMenu', tambahMenu);
router.post('/tambahPelanggan', tambahPelanggan);
const cekSesiPelanggan = (req, res, next) => {
    if (!req.session.pelangganId) {
        return res.status(401).json({ message: 'Pelanggan belum mendaftar atau login' });
    }
    next();
};

router.post('/tambahTransaksi', cekSesiPelanggan, tambahTransaksi);


export default router;