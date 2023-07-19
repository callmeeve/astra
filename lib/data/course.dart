class Course {
  final String name;
  final String description;
  final String imageUrl;
  final String videoUrl;
  final String docUrl;
  final String pptUrl;

  Course({
    required this.name,
    required this.description,
    required this.imageUrl,
    required this.videoUrl,
    required this.docUrl,
    required this.pptUrl,
  });
}

final List<Course> courses = [
  Course(
    imageUrl: 'assets/images/1.jpg',
    videoUrl:
        'https://drive.google.com/drive/folders/1oQZvulru0nBsBkCF0_lqRXOur_g86Drf',
    name: 'Download dan Instalasi Aplikasi Zahir',
    description:
        'Cara Download dan Instalasi Aplikasi Zahir\nsecara sistematis.',
    docUrl:
        'https://docs.google.com/document/d/1QTUakIWFAxw7SpkInZM6bGSVvO8Gu1nz/edit?usp=drive_link&ouid=115101106298013546394&rtpof=true&sd=true',
    pptUrl:
        'https://docs.google.com/presentation/d/1K509SEZWzQQFW18OnpCsiJ7m45o4TyGq/edit?usp=drive_link&ouid=115101106298013546394&rtpof=true&sd=true',
  ),
  Course(
    imageUrl: 'assets/images/2.jpg',
    videoUrl:
        'https://drive.google.com/drive/folders/1h_qebKD_MnUia99FSNolgpJ2lyQRDtyn',
    name: 'Membuat Data Awal Zahir',
    description: '',
    docUrl: '',
    pptUrl: '',
  ),
  Course(
    imageUrl: 'assets/images/3.jpg',
    videoUrl:
        'https://drive.google.com/drive/folders/12yZPobK7vcjJG-CXaUoa9edqbF94NxwV',
    name: 'Membuat Akun dan Saldo Awal Akun Baru',
    description: '',
    docUrl: '',
    pptUrl: '',
  ),
  Course(
    imageUrl: 'assets/images/4.jpg',
    videoUrl:
        'https://drive.google.com/drive/folders/1vEbWp76kgCRFqL2vgUxUXi3x0CajhseL',
    name: ' Rekam Kas Bank Masuk (Zahir)',
    description: '',
    docUrl: '',
    pptUrl: '',
  ),
  Course(
    imageUrl: 'assets/images/5.jpg',
    videoUrl:
        'https://drive.google.com/drive/folders/1QgEK2noTcxpO8-wq3Dzq_5rc7EZNSHK_',
    name: 'Rekam Kas Bank Keluar (Zahir)',
    description: '',
    docUrl: '',
    pptUrl: '',
  ),
  Course(
    imageUrl: 'assets/images/6.jpg',
    videoUrl:
        'https://drive.google.com/drive/folders/1WsOVbzfe-a46BxZCPTb_ZUhiZGkuzA8Z',
    name: 'Input Vendor Baru di Zahir',
    description: '',
    docUrl: '',
    pptUrl: '',
  ),
  Course(
    imageUrl: 'assets/images/7.jpg',
    videoUrl:
        'https://drive.google.com/drive/folders/1PsecXWnaKuh5B-oaJi23XkCqWu3fEnO6',
    name: 'Cara Validasi Saldo Kas dan Bank pada Laporan Rekapitulasi',
    description: '',
    docUrl: '',
    pptUrl: '',
  ),
  Course(
    imageUrl: 'assets/images/8.jpg',
    videoUrl:
        'https://drive.google.com/drive/folders/15TZUNgNJxrl0QN-pkMiK_HdEK2rXT6Iz',
    name: 'Mengecek Mutasi Tranksaksi (Zahir)',
    description: '',
    docUrl: '',
    pptUrl: '',
  ),
  Course(
    imageUrl: 'assets/images/9.jpg',
    videoUrl:
        'https://drive.google.com/drive/folders/1FaGFZAz0BkdwOlEhIpQ0IzewD8CeyLHU',
    name: 'Tutup Buku Akhir Bulan',
    description: '',
    docUrl: '',
    pptUrl: '',
  ),
  Course(
    imageUrl: 'assets/images/10.jpg',
    videoUrl:
        'https://drive.google.com/drive/folders/18PXTR-xsaMIV2UsrEgQM6D4KivF4xMrl',
    name: 'Tutup Buku Akhir Tahun',
    description: '',
    docUrl: '',
    pptUrl: '',
  ),
];
