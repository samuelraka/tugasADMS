import { Sequelize } from "sequelize";
import db from "../config/database.js";

const {  DataTypes } = Sequelize;
const Detail_Pesanan = db.define('detail_pesanan', {
    id_detail: {
        type: DataTypes.INTEGER,
        primaryKey: true,
        autoIncrement: true
    },
    id_transaksi: {
        type: DataTypes.INTEGER,
        references: {
            model: 'transaksi',
            key: 'id_transaksi'
        }
    },
    id_menu: {
        type: DataTypes.INTEGER,
        references: {
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
    nama_menu: {
        type: DataTypes.STRING,
        allowNull: false
    },
    jenis: {
        type: DataTypes.STRING,
        allowNull: false
    },
    deskripsi: {
        type: DataTypes.TEXT,
        allowNull: false
    },
    harga_pcs: {
        type: DataTypes.DECIMAL(10, 2),
        allowNull: false
    },
    url: {
        type: DataTypes.STRING,
        allowNull: false
    }
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
        references: {
            model: 'pelanggan',
            key: 'id_pelanggan'
        }
    },
    jumlah_bayar: DataTypes.DECIMAL(10,2),
    jenis_pembayaran: DataTypes.STRING,
    jenis_pesanan: DataTypes.ENUM('Dine In','Take Away'),
    id_meja: {
        type: DataTypes.INTEGER,
        references: {
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