class DataMenu{
  String nama;
  String deskripsi;
  String gambar;
  String harga;
  String waktu;

  DataMenu({
    required this.nama,
    required this.deskripsi,
    required this.gambar,
    required this.harga,
    required this.waktu
  });
}

List<DataMenu> malamHari = [
  DataMenu(
    nama: 'Nasi Goreng',
    deskripsi: 'Nasi goreng merupakan sajian nasi yang digoreng dalam sebuah wajan atau penggorengan menghasilkan cita rasa berbeda karena dicampur dengan bumbu-bumbu seperti garam, bawang putih, bawang merah, merica dan kecap manis.',
    gambar: 'asset/img/NasGor.png',
    harga: '12.000',
    waktu: '10 menit'
  ),
  DataMenu(
    nama: 'Mie Goreng',
    deskripsi: 'Mi goreng adalah hidangan mie yang dimasak dengan digoreng tumis khas Indonesia seperti bawang putih, udang serta daging ayam, cabai, sayuran, tomat, telur ayam, dan acar.',
    gambar: 'asset/img/MiGor.png',
    harga: '12.000',
    waktu: '10 menit'
  ),
  DataMenu(
    nama: 'Mie Rebus',
    deskripsi: 'Hidangan ini terbuat dari mi kuning telur, dengan kuah kari - seperti saus yang pedas. Kuahnya terbuat dari kaldu ayam, serai, lengkuas, jahe, daun salam, gula jawa, garam, air.',
    gambar: 'asset/img/MiReb.png',
    harga: '12.000',
    waktu: '10 menit'
  ),
  DataMenu(
    nama: 'Martabak Coklat Kacang',
    deskripsi: 'Martabak terbuat dari adonan terigu, telur, gula, dan soda kue. Martabak dimasak dengan wajan berbentuk bulat khusus. Disajikan dengan margarin atau banyak mentega yang tersebar di bagian atas serta topping coklat kacang.',
    gambar: 'asset/img/CokKac.png',
    harga: '8.000',
    waktu: '8 menit'
  ),
  DataMenu(
    nama: 'Martabak Coklat Keju',
    deskripsi: 'Martabak terbuat dari adonan terigu, telur, gula, dan soda kue. Martabak dimasak dengan wajan berbentuk bulat khusus. Disajikan dengan margarin atau banyak mentega yang tersebar di bagian atas dan topping coklat keju.',
    gambar: 'asset/img/CokKej.png',
    harga: '9.000',
    waktu: '8 menit'
  ),
];

List<DataMenu> sarapan = [
  DataMenu(
    nama: 'Nasi Uduk',
    deskripsi: 'Nasi uduk adalah hidangan yang dibuat dari nasi putih yang diaron dan dikukus dengan santan, serta dibumbui dengan pala, kayu manis, jahe, daun serai dan merica.', 
    gambar: 'asset/img/NasDuk.png',
    harga: '8.000',
    waktu: '5 menit'
  ),
  DataMenu(
    nama: 'Nasi Kuning',
    deskripsi: 'Makanan ini terbuat dari beras yang dimasak bersama dengan kunyit serta santan dan rempah-rempah. Nasi kuning biasa disajikan dengan bermacam lauk-pauk khas Indonesia.', 
    gambar: 'asset/img/NasKun.png',
    harga: '8.000',
    waktu: '5 menit'
  ),
];
