  document.addEventListener('DOMContentLoaded', function() {
    fetch('http://localhost:3000/menu')
      .then(response => {
        if (!response.ok) {
          throw new Error('Network response was not ok');
        }
        return response.json();
      })
      .then(data => {
        const menuItemsContainer = document.getElementById('menu-items');
        data.forEach(item => {
          const menuItem = document.createElement('div');
          menuItem.classList.add('menu-item');
  
          menuItem.innerHTML = `
            <a href="../page/pelanggan.html">
              <img src="${item.url}" alt="${item.nama_menu}">
              <h3>${item.nama_menu}</h3>
            </a>
              <p>${item.jenis}</p>
              <p>${item.deskripsi}</p>
              <p>Price: ${item.harga_pcs} IDR</p>
          `;
  
          menuItemsContainer.appendChild(menuItem);
        });
      })
      .catch(error => console.error('Error fetching menu data:', error));
  });
  
  document.addEventListener("DOMContentLoaded", () => {
    const formPertanyaan = document.getElementById("order-form");
});

function submitPelanggan() {
    const namaInput = document.getElementById("nama").value;
    const telpInput = document.getElementById("no_telp").value;
    const submitButton = document.getElementById("button-submit");

    submitButton.disabled = true;

    const formDaftar = {
        nama_pelanggan: namaInput,
        no_telp: telpInput,
    };

    fetch("http://localhost:3000/tambahPelanggan", {
        method: "POST",
        headers: {
            "Content-Type": "application/json",
        },
        body: JSON.stringify(formDaftar),
    })
    .then((response) => response.json())
    .then((data) => {
        if (!data.id_pelanggan) {
            throw new Error('Pendaftaran gagal');
        }
        alert("Pendaftaran berhasil");

        window.location.href = "../page/order1.html";
    })
    .catch((error) => {
        console.error("Terjadi kesalahan:", error);
        alert("Terjadi kesalahan saat mendaftar.");
        submitButton.disabled = false;
    });

    return false;
}

const tambahButton = document.getElementById("button-submit");
tambahButton.addEventListener("click", submitPelanggan);


  document.addEventListener('DOMContentLoaded', () => {
    // Ambil id_transaksi dari session
    const idTransaksi = getSessionIdTransaksi();

    // Panggil fungsi untuk menampilkan detail pesanan
    tampilkanDetailPesanan(idTransaksi);
});


