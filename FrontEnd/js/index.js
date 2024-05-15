document.addEventListener('DOMContentLoaded', function() {
    // Mendapatkan nilai dari localStorage
    const idPesanan = localStorage.getItem('idPesanan');
    const jumlahPesan = localStorage.getItem('jumlahPesan');
  
    // Menampilkan nilai pada form
    document.getElementById('id_pesan').value = idPesanan;
    document.getElementById('jumlah_pesan').value = jumlahPesan;
  });
  