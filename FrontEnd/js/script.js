document.addEventListener('DOMContentLoaded', function() {
    // Mendapatkan nilai dari localStorage
    const idPesanan = localStorage.getItem('idPesanan');
    const jumlahPesan = localStorage.getItem('jumlahPesan');
  
    // Menampilkan nilai pada form
    document.getElementById('id_pesan').value = idPesanan;
    document.getElementById('jumlah_pesan').value = jumlahPesan;
  });

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
  
    // Nonaktifkan tombol setelah diklik
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
        // Tangani respons dari server di sini, jika diperlukan
        const formPelanggan = document.getElementById("order-form");
        formPelanggan.style.display = "none";
        alert("Pendaftaran berhasil");
  
        window.location.href = "../page/order1.html";
  
        // Aktifkan kembali tombol setelah pengiriman selesai
        submitButton.disabled = false;
      })
      .catch((error) => {
        console.error("Terjadi kesalahan:", error);
        alert("Terjadi kesalahan saat mendaftar.");
  
        // Aktifkan kembali tombol setelah terjadi kesalahan
        submitButton.disabled = false;
      });
    
    return false; // Mencegah perilaku default tombol "Kirim Pertanyaan"
  }
  const tambahButton = document.getElementById("button-submit");
  tambahButton.addEventListener("click", submitPelanggan);