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
export const tambahDetail = async (req,res) => {
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
export const tambahMenu = async (req,res) => {
    try {
        await Menu.create(req.body);
        res.status(201).json({message: "Pertanyaan Ditambahkan"});
    } catch (error) {
        console.log(error.message);
    }
};

// Procedure tambah_pelanggan

export const tambahPelanggan = async (req, res) => {
    try {
        const { nama_pelanggan, no_telp } = req.body;
        const newPelanggan = await Pelanggan.create({ nama_pelanggan, no_telp });

        req.session.pelangganId = newPelanggan.id_pelanggan;
        res.status(201).json(newPelanggan);
    } catch (error) {
        res.status(500).json({ message: error.message });
    }
};


// Procedure tambah_transaksi
export const tambahTransaksi = async (req, res) => {
    console.log('Session:', req.session);  // Tambahkan log ini untuk debugging
    if (!req.session.pelangganId) {
        return res.status(401).json({ message: 'Pelanggan belum mendaftar atau login' });
    }

    try {
        const { jumlah_bayar, jenis_pembayaran, jenis_pesanan, id_meja, detail_pesanan } = req.body;
        const newTransaksi = await Transaksi.create({
            id_pelanggan: req.session.pelangganId,
            jumlah_bayar,
            jenis_pembayaran,
            jenis_pesanan,
            id_meja
        });

        req.session.id_transaksi = newTransaksi.id_transaksi;

        if (detail_pesanan && detail_pesanan.length > 0) {
            const detailPromises = detail_pesanan.map(detail => {
                return Detail_Pesanan.create({
                    id_transaksi: newTransaksi.id_transaksi,
                    id_menu: detail.id_menu,
                    kuantitas: detail.kuantitas,
                    harga_total: detail.harga_total
                });
            });
            await Promise.all(detailPromises);
        }

        res.status(201).json(newTransaksi);
    } catch (error) {
        res.status(500).json({ message: error.message });
    }
};


export const getSessionIdTransaksi = (req, res) => {
    try {
        // Ambil id_transaksi dari sesi dan kirimkan sebagai respons
        const idTransaksi = req.session.id_transaksi;
        res.status(200).json({ id_transaksi: idTransaksi });
    } catch (error) {
        res.status(500).json({ message: error.message });
    }
};

// Buat fungsi untuk menampilkan detail pembelian
export const tampilkan_detail_pembelian = async (id_transaksi) => {
    try {
        // Jalankan query untuk mengambil detail pembelian
        const query = `
        DECLARE output TEXT DEFAULT '';
            SELECT CONCAT('Nama Pelanggan: ', PELANGGANS.nama_pelanggan, '\n',
                            'Menu yang Dibeli: ', 
                            GROUP_CONCAT(
                                CONCAT(
                                    MENUS.nama_menu, ' (', 
                                    DETAIL_PESANANS.kuantitas, ' pcs)'
                                ) SEPARATOR ', '
                            ), 
                            '\n',
                            'Total Bayar: Rp ', SUM(DETAIL_PESANANS.harga_total)) 
            INTO output
            FROM TRANSAKSIS
            JOIN PELANGGANS ON TRANSAKSIS.id_pelanggan = PELANGGANS.id_pelanggan
            JOIN (
                SELECT id_transaksi, id_menu, SUM(kuantitas) AS kuantitas, SUM(harga_total) AS harga_total
                FROM DETAIL_PESANANS
                GROUP BY id_transaksi, id_menu
            ) AS DETAIL_PESANANS ON TRANSAKSIS.id_transaksi = DETAIL_PESANANS.id_transaksi
            JOIN MENUS ON DETAIL_PESANANS.id_menu = MENUS.id_menu
            WHERE TRANSAKSIS.id_transaksi = ?
            GROUP BY TRANSAKSIS.id_transaksi, PELANGGANS.nama_pelanggan
        `;
        
        // Eksekusi kueri SQL
        const [rows, fields] = await db.query(query, [id_transaksi]);

        // Ambil nilai output dari baris pertama hasil query
        const output = rows[0]?.output;

        // Parsing string output ke dalam format JSON
        const detailPembelian = JSON.parse(output);

        // Kembalikan detail pembelian
        return detailPembelian;
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