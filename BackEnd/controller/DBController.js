import {Detail_Pesanan, Meja, Menu, Pelanggan, Transaksi } from "../models/DBModels.js";
import db from "../config/database.js";

// Procedure edit_detail
// Procedure editDetail
export const editDetail = async (req,res) =>{
    try{
        await Detail_Pesanan.update(req.body, {
            where:{
                id_detail_pesanan:req.params.id_detail_pesanan
            }
        });
        res.status(200).json({msg: "Detail Pesanan Diubah"});
    } catch(error){
        console.log(error.message);
    }
}

// Procedure editMeja
export const editMeja = async (req,res) => {
    try{
        await Meja.update(req.body, {
            where:{
                id_meja:req.params.id_meja
            }
        });
        res.status(200).json({msg: "Meja Diubah"});
    } catch(error){
        console.log(error.message);
    }
};

// Procedure editMenu
export const editMenu = async (req,res) => {
    try{
        await Menu.update(req.body, {
            where:{
                id_menu:req.params.id_menu
            }
        });
        res.status(200).json({msg: "Menu Diubah"});
    } catch(error){
        console.log(error.message);
    }
};

// Procedure editPelanggan
export const editPelanggan = async (req,res) => {
    try{
        await Pelanggan.update(req.body, {
            where:{
                id_pelanggan:req.params.id_pelanggan
            }
        });
        res.status(200).json({msg: "Detail Pesanan Diubah"});
    } catch(error){
        console.log(error.message);
    }
};

// Procedure editTransaksi
export const editTransaksi = async (req,res) => {
    try{
        await Transaksi.update(req.body, {
            where:{
                id_transaksi:req.params.id_transaksi
            }
        });
        res.status(200).json({msg: "Detail Pesanan Diubah"});
    } catch(error){
        console.log(error.message);
    }
};

// Procedure hapusDetail
export const hapusDetail = async (req,res) => {
    try{
        await Detail_Pesanan.destroy({
            where:{
                id_detail_pesanan:req.params.id_detail_pesanan
            }
        });
        res.status(200).json({msg: "Detail Pesanan Dihapus"});
    } catch(error){
        console.log(error.message);
    }
};

// Procedure hapusMeja
export const hapusMeja = async (req,res) => {
    try{
        await Meja.destroy({
            where:{
                id_meja:req.params.id_meja
            }
        });
        res.status(200).json({msg: "Detail Pesanan Dihapus"});
    } catch(error){
        console.log(error.message);
    }
};

// Procedure hapusMenu
export const hapusMenu = async (req,res) => {
    try{
        await Menu.destroy({
            where:{
                id_menu:req.params.id_menu
            }
        });
        res.status(200).json({msg: "Detail Pesanan Dihapus"});
    } catch(error){
        console.log(error.message);
    }
};

// Procedure hapusPelanggan
export const hapusPelanggan = async (req,res) => {
    try{
        await Pelanggan.destroy({
            where:{
                id_pelanggan:req.params.id_pelanggan
            }
        });
        res.status(200).json({msg: "Detail Pesanan Dihapus"});
    } catch(error){
        console.log(error.message);
    }
};

// Procedure hapusTransaksi
export const hapusTransaksi = async (req,res) => {
    try{
        await Transaksi.destroy({
            where:{
                id_transaksi:req.params.id_transaksi
            }
        });
        res.status(200).json({msg: "Detail Pesanan Dihapus"});
    } catch(error){
        console.log(error.message);
    }
};


// Procedure tambah_detail
export const tambahDetail = async (id_transaksi, id_menu, kuantitas, harga_total) => {
    try {
        await Detail_Pesanan.create(req.body);
        res.status(201).json({message: "Pertanyaan Ditambahkan"});
    } catch (error) {
        console.log(error.message);
    }   
};

// Procedure tambah_meja
export const tambahMeja = async (req,res) => {
    try {
        await Meja.create(req.body);
        res.status(201).json({message: "Pertanyaan Ditambahkan"});
    } catch (error) {
        console.log(error.message);
    }   
};

// Procedure tambah_menu
export const tambahMenu = async (nama_menu, jenis, deskripsi, harga_pcs) => {
    try {
        await Menu.create(req.body);
        res.status(201).json({message: "Pertanyaan Ditambahkan"});
    } catch (error) {
        console.log(error.message);
    }
};

// Procedure tambah_pelanggan
export const tambahPelanggan = async (nama_pelanggan, no_telp) => {
    try {
        await Pelanggan.create(req.body);
        res.status(201).json({message: "Pertanyaan Ditambahkan"});
    } catch (error) {
        console.log(error.message);
    }
        
};

// Procedure tambah_transaksi
export const tambahTransaksi = async (id_pelanggan, jumlah_bayar, jenis_pembayaran, jenis_pesanan) => {
    try {
        await Transaksi.create(req.body);
        res.status(201).json({message: "Pertanyaan Ditambahkan"});
    } catch (error) {
        console.log(error.message);
    }
};

// Buat fungsi untuk menampilkan detail pembelian
export const tampilkanDetailPembelian = async (id_transaksi_input) => {
    try {
        // Jalankan query untuk mengambil detail pembelian
        const [rows, fields] = await db.query(
            `SELECT CONCAT('Nama Pelanggan: ', PELANGGAN.nama_pelanggan, '\n',
                            'Menu yang Dibeli: ', 
                            GROUP_CONCAT(
                                CONCAT(
                                    MENU.nama_menu, ' (', 
                                    kuantitas, ' pcs)'
                                ) SEPARATOR ', '), 
                            '\n',
                            'Total Bayar: Rp ', SUM(DETAIL_PESANAN.harga_total)) AS output
            FROM TRANSAKSI
            JOIN PELANGGAN ON TRANSAKSI.id_pelanggan = PELANGGAN.id_pelanggan
            JOIN (
                SELECT id_transaksi, id_menu, SUM(kuantitas) AS kuantitas, SUM(harga_total) AS harga_total
                FROM DETAIL_PESANAN
                GROUP BY id_transaksi, id_menu
            ) AS DETAIL_PESANAN ON TRANSAKSI.id_transaksi = DETAIL_PESANAN.id_transaksi
            JOIN MENU ON DETAIL_PESANAN.id_menu = MENU.id_menu
            WHERE TRANSAKSI.id_transaksi = ?
            GROUP BY TRANSAKSI.id_transaksi, PELANGGAN.nama_pelanggan;`,
            [id_transaksi_input]
        );

        // Kembalikan hasilnya
        return rows[0].output;
    } catch (error) {
        throw new Error(error.message);
    }
};

// Buat trigger untuk menghitung total bayar setelah setiap operasi INSERT pada tabel detail_pesanan
export const totalBayarTrigger = async () => {
    try {
        await db.query(
            `CREATE TRIGGER total_bayar AFTER INSERT ON detail_pesanan
            FOR EACH ROW
            BEGIN
                DECLARE total DECIMAL(10, 2);
    
                SELECT SUM(harga_total)
                INTO total
                FROM DETAIL_PESANAN
                WHERE id_transaksi = NEW.id_transaksi;
                
                UPDATE TRANSAKSI
                SET jumlah_bayar = total
                WHERE id_transaksi = NEW.id_transaksi;
            END`
        );
    } catch (error) {
        throw new Error(error.message);
    }
};

export const getMenu = async (req,res) => {
    try {
        const menus = await Menu.findAll();
        res.status(200).json(menus);
    } catch (error) {
        console.log(error.message);
    }
};

export const getMeja = async (req,res) => {
    try {
        const Mejas = await Meja.findAll();
        res.status(200).json(Mejas);
    } catch (error) {
        console.log(error.message);
    }
};