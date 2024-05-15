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
            <a href="../page/order1.html ">
              <img src="${item.url}" alt="${item.nama_menu}">
              <h3>${item.nama_menu}</h3>
              <p>${item.jenis}</p>
              <p>${item.deskripsi}</p>
              <p>Price: ${item.harga_pcs} IDR</p>
            </a>
          `;
  
          menuItemsContainer.appendChild(menuItem);
        });
      })
      .catch(error => console.error('Error fetching menu data:', error));
  });
  

