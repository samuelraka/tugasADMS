import { Sequelize } from "sequelize";
import db from "../config/database.js";

const {DataTypes} = Sequelize;

const Detail_Pesanan = db.define('detail_pesanan', {
    id_detail: {
        type: DataTypes.INTEGER,
        primaryKey: true,
        autoIncrement: true
    },
    id_transaksi: {
        type: DataTypes.INTEGER,
        refereces: {
            model: 'transaksi',
            key: 'id_transaksi'
        }
    },
    id_menu: {
        type: DataTypes.INTEGER,
        refereces: {
            model: 'menu',
            key: 'id_menu'
        }
    },
    kuantitas: DataTypes.INTEGER,
    harga_total: DataTypes.INTEGER
}, {
    freezeTableName: false
});

const Meja = db.define('meja', {
    id_meja: {
        type: DataTypes.INTEGER,
        primaryKey: true,
        autoIncrement: true
    },
    nomor_meja: DataTypes.INTEGER,
    status: DataTypes.ENUM('tersedia', 'tidak tersedia')
}, {
    freezeTableName: false
});

const Menu = db.define('menu', {
    id_menu: {
        type: DataTypes.INTEGER,
        primaryKey: true,
        autoIncrement: true
    },
    nama_menu: DataTypes.STRING,
    jenis: DataTypes.STRING,
    deskripsi: DataTypes.TEXT,
    harga_pcs: DataTypes.DECIMAL(10,2)
}, {
    freezeTableName: false
});

const Pelanggan = db.define('pelanggan', {
    id_pelanggan: {
        type: DataTypes.INTEGER,
        primaryKey: true,
        autoIncrement: true
    },
    nama_pelanggan: DataTypes.STRING,
    no_telp: DataTypes.STRING
}, {
    freezeTableName: false
});

const Transaksi = db.define('transaksi', {
    id_transaksi: {
        type: DataTypes.INTEGER,
        primaryKey: true,
        autoIncrement: true
    },
    id_pelanggan: {
        type: DataTypes.INTEGER,
        refereces: {
            model: 'pelanggan',
            key: 'id_pelanggan'
        }
    },
    jumlah_bayar: DataTypes.DECIMAL(10,2),
    jenis_pembayaran: DataTypes.STRING,
    jenis_pesanan: DataTypes.ENUM('Dine In','Take Away'),
    id_meja: {
        type: DataTypes.INTEGER,
        refereces: {
            model: 'meja',
            key: 'id_meja'
        }
    }
}, {
    freezeTableName: false
});

export { Detail_Pesanan, Meja, Menu, Pelanggan, Transaksi };

(async()=>{
    await db.sync();
})();