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
        'https://drive.google.com/file/d/1pcMW3_v_5gsWBVHTZsPGiPR1IidF0N4v/view?usp=drive_link',
    name: 'Download dan Instalasi Aplikasi Zahir',
    description:
        'Untuk menginstal aplikasi Zahir Accounting, pertama-tama, kunjungi situs resmi Zahir menggunakan peramban web. Di sana, Anda dapat mencari tautan download untuk aplikasi Zahir Accounting 6. Setelah menemukannya, isi data yang diperlukan, dan selanjutnya, klik pada tautan download untuk memulai proses pengunduhan.\n\nSetelah selesai mengunduh file instalasi, cari file tersebut pada perangkat Anda dan buka untuk memulai instalasi. Jika Anda juga menerima email dengan tautan download Zahir, buka email tersebut dan ikuti tautan untuk mendownload aplikasi.\n\nKetika file instalasi sudah terbuka, ikuti petunjuk yang ada pada jendela instalasi. Bacalah persyaratan penggunaan dengan seksama, dan jika Anda setuju dengan persyaratan tersebut, klik opsi "I accept the terms in the license agreement" atau "Saya setuju dengan persyaratan ini".\n\nSelanjutnya, klik tombol "Next" atau "Selanjutnya" untuk melanjutkan proses instalasi. Pada tahap ini, Anda akan diminta untuk memilih lokasi instalasi dan mengatur proses instalasi sesuai preferensi Anda. Komponen utama seperti inti, database, dan komponen pendukung biasanya akan dipilih secara otomatis, tetapi Anda dapat menyesuaikan pilihan ini jika diperlukan.\n\nSetelah semuanya sudah diatur dengan benar, klik tombol "Install" atau "Instal" untuk memulai proses instalasi. Tunggu hingga proses instalasi selesai.\n\nSetelah selesai menginstal, Anda akan menerima notifikasi atau pesan selesai. Klik tombol "Finish" untuk menyelesaikan instalasi aplikasi Zahir Accounting.\n\nSekarang, aplikasi Zahir Accounting sudah berhasil diinstal pada perangkat Anda dan siap digunakan untuk membantu Anda mengelola keuangan bisnis dengan lebih efisien dan efektif.',
    docUrl:
        'https://docs.google.com/document/d/1QTUakIWFAxw7SpkInZM6bGSVvO8Gu1nz/edit?usp=drive_link&ouid=115101106298013546394&rtpof=true&sd=true',
    pptUrl:
        'https://docs.google.com/presentation/d/1K509SEZWzQQFW18OnpCsiJ7m45o4TyGq/edit?usp=drive_link&ouid=115101106298013546394&rtpof=true&sd=true',
  ),
  Course(
    imageUrl: 'assets/images/2.jpg',
    videoUrl:
        'https://drive.google.com/file/d/1Se53SV4NoDfBncozHVrTgukSmJbaCeVG/view?usp=drive_link',
    name: 'Membuat Data Awal Zahir',
    description:
        'Klik opsi "Membuat Data Baru" untuk memulai pengaturan data perusahaan. Selanjutnya, isi informasi perusahaan Anda, seperti:\n\nNama Perusahaan: Lembaga Pengembangan Bisnis Sahabat Hebat, Alamat Perusahaan: (Isi dengan alamat Lembaga Pengembangan Bisnis Sahabat Hebat berada), dan No. Telefon: (Isi dengan nomor telepon atau nomor HP admin atau koordinator jika ada). Email dan website dapat diisi jika ada, namun opsional.\n\nSetelah mengisi informasi perusahaan, klik "Lanjutkan" untuk melanjutkan proses pembuatan data perusahaan. Selanjutnya, lengkapi Periode Akuntansi dengan mengisi Bulan (isi dengan bulan saat ini, yaitu bulan di mana Anda akan membuat data awal) dan Tahun (isi dengan tahun saat ini). Jangan lupa untuk mengisi juga "Tutup Buku Akhir Tahun" dengan "Desember". Klik "Lanjutkan" untuk melanjutkan ke langkah selanjutnya.\n\nSetelah itu, konfirmasi data yang telah Anda masukkan dan pastikan informasinya sudah benar, lalu klik "Lanjutkan". Pilih jenis usaha dengan memilih opsi "Lainnya" dan klik "Lanjutkan". Muncul info, klik "Ya" untuk melanjutkan.\n\nSelanjutnya, atur mata uang menjadi "Rupiah" agar sesuai dengan mata uang yang digunakan. Terakhir, klik "Selesai" untuk menyelesaikan proses konfigurasi data perusahaan.\n\nSekarang, Anda telah berhasil membuat data perusahaan di aplikasi Zahir Accounting dan siap untuk mulai mengelola keuangan bisnis dengan menggunakan aplikasi ini. Dengan data perusahaan yang teratur dan akurat, Anda dapat lebih efisien dalam mengelola keuangan dan meningkatkan performa bisnis Anda.',
    docUrl:
        'https://docs.google.com/document/d/1zjpQR2j719qNMPb0_UDDcDbpp1S9T9p3/edit?usp=drive_link&ouid=115101106298013546394&rtpof=true&sd=true',
    pptUrl:
        'https://docs.google.com/presentation/d/1Sli8NW0TD44KpINdUe5OinQYNMSB7F8o/edit?usp=drive_link&ouid=115101106298013546394&rtpof=true&sd=true',
  ),
  Course(
    imageUrl: 'assets/images/3.jpg',
    videoUrl:
        'https://drive.google.com/file/d/1iGjdJMb2wWvzDlIjAsXBTiE-a7hzEPdY/view?usp=drive_link',
    name: 'Membuat Akun dan Saldo Awal Akun Baru',
    description:
        'Untuk memulai, buka aplikasi Zahir Accounting dan klik "Data Sebelumnya". Selanjutnya, pilih menu "Data Rekening" dan klik opsi "Kas Kecil" yang terletak di sebelah kiri layar.\n\nSetelah itu, klik "Edit" di bagian bawah kiri layar (gambar pensil). Ubah nama akun menjadi "AKUN PERANTARA". Pastikan klasifikasi akun terpilih adalah "Kas" dengan kode "110-10" dan nama "Akun Perantara".\n\nKlik "Tambah" pada pojok kiri bawah layar untuk menambahkan akun dana operasional dan dana program. Untuk setiap akun yang ditambahkan, pastikan mengisi klasifikasi akun sebagai "Utang Lain", kode mengikuti template yang ada, dan nama akun disesuaikan dengan jenisnya, misalnya "Dana Operasional", "Dana Pelatihan Basic Mentality", dan "Dana Temu Rutin".\n\nSetelah menambahkan semua akun dana program dan operasional, klik "Tutup" di pojok kiri bawah layar. Selanjutnya, klik "Setting" di pojok kiri atas, kemudian pilih "Saldo Awal" dan klik "Saldo Awal Akun".\n\nPada akun "Kas", tulis nominal uang kas kantor yang Anda pegang saat ini. Lalu, pada akun "Bank", tulis nominal saldo bank kantor saat ini. Pada masing-masing akun dana operasional atau program, masukkan total saldo dana program yang ada, sesuaikan sampai angka terakhir.\n\nPastikan di bagian bawah tabel terdapat keterangan "nilai sebesar Rp.0 akan dialokasikan pada akun sementara". Pastikan nilai tersebut benar-benar 0 agar saldo awal Anda seimbang. Setelah itu, klik "Rekam".\n\nSetelah mengikuti semua langkah di atas, Anda telah berhasil menambahkan dan mengatur akun-akun di aplikasi Zahir Accounting, serta mengisi saldo awal untuk akun-akun tersebut. Selamat, Anda telah menyelesaikan langkah-langkah yang diperlukan dan siap untuk memulai pengelolaan keuangan bisnis dengan aplikasi Zahir!',
    docUrl:
        'https://docs.google.com/document/d/1rhdxNsK25f97RUkJq0F8u_peF_EeFRl-/edit?usp=drive_link&ouid=115101106298013546394&rtpof=true&sd=true',
    pptUrl:
        'https://docs.google.com/presentation/d/1H3xp2N4y1VIHdJsMTutI5rNvWqQRJtU9/edit?usp=drive_link&ouid=115101106298013546394&rtpof=true&sd=true',
  ),
  Course(
    imageUrl: 'assets/images/4.jpg',
    videoUrl:
        'https://drive.google.com/file/d/1k6UYWb7ULtzvR4LT7W7GE9Mcs2YB8nUt/view?usp=drive_link',
    name: 'Rekam Kas Bank Masuk (Zahir)',
    description:
        'Materi Mengisi Kas Masuk di Aplikasi Zahir dimulai dengan membuka aplikasi Zahir pada perangkat Anda dan pastikan Anda telah masuk ke akun Anda. Selanjutnya, pilih opsi "Membuka Data Sebelumnya" dan klik "Ok" untuk melanjutkan.\n\nSetelah berhasil membuka data sebelumnya, pilih modul "Kas & Bank" pada menu utama Zahir di antarmuka aplikasi. Cari dan klik "Kas Masuk" untuk mulai mengisi data Kas Masuk.\n\nDi dalam formulir entri kas masuk, Anda akan menemukan kolom dan bidang yang perlu diisi dengan rincian transaksi. Pastikan Anda mengisi rincian berikut dengan cermat:\n\n1. Akun Kas: Pilih salah satu akun masuk Bank atau Kas Kecil sesuai dengan jenis transaksi.\n\n2. Dari: Klik gambar kotak dan pilih Data Nama untuk memilih entitas atau pihak yang memberikan kas masuk.\n\n3. Cek No: Isi dengan nomor cek atau referensi transaksi yang belum terdaftar, misalnya: 001/01/KM-O/VI/23.\n\n4. Tanggal: Pilih tanggal transaksi kas masuk dengan mengklik pada kalender atau memasukkan tanggal secara manual.\n\n5. Alokasi Dana: Klik dua kali pada Kode dan pilih Daftar Akun untuk memilih akun dana yang akan dialokasikan.\n\n6. Klik Nilai: Masukkan jumlah uang kas masuk pada kolom yang disediakan.\n\n7. Deskripsi (klik F5 pada keyboard): Berikan deskripsi yang jelas dan singkat tentang kas masuk tersebut, misalnya "Dana Masuk dari YDBA HO untuk Dana Operasional".\n\nSetelah mengisi semua rincian transaksi dengan benar, periksa kembali data yang Anda masukkan untuk memastikan keakuratan. Jika semua informasi sudah sesuai, klik tombol "Rekam" untuk menyimpan data kas masuk tersebut ke dalam aplikasi Zahir.\n\nDengan mengikuti langkah-langkah di atas, Anda telah berhasil mengisi kas masuk di aplikasi Zahir dengan tepat dan rapi, sehingga data keuangan bisnis Anda menjadi lebih teratur dan mudah diakses.',
    docUrl:
        'https://docs.google.com/document/d/16ZHatv24P2fQfjGL5HeC-2rjrjGbjagy/edit?usp=drive_link&ouid=115101106298013546394&rtpof=true&sd=true',
    pptUrl:
        'https://docs.google.com/presentation/d/1ACghfaXjER0KaEohfzNXbbz1IL6YZB-K/edit?usp=drive_link&ouid=115101106298013546394&rtpof=true&sd=true',
  ),
  Course(
    imageUrl: 'assets/images/5.jpg',
    videoUrl:
        'https://drive.google.com/file/d/1NLLIF9DaEnAAzvDKu2dIJHzk1TohSLNu/view?usp=drive_link',
    name: 'Rekam Kas Bank Keluar (Zahir)',
    description:
        'Materi Mengisi Kas Keluar di Aplikasi Zahir dimulai dengan membuka aplikasi Zahir pada perangkat Anda dan memastikan bahwa Anda telah masuk ke akun Anda. Selanjutnya, di menu utama aplikasi, cari dan pilih modul "Kas/Bank".\n\nSetelah berhasil memilih modul tersebut, pilih opsi "Kas Keluar" untuk mulai mengisi data Kas Keluar.\n\nIsi rincian transaksi Kas Keluar sebagai berikut:\n\n1. Akun Kas: Pilih salah satu akun Keluar Bank atau Kas Kecil sesuai dengan jenis transaksi.\n\n2. Penerima: Klik gambar kotak dan pilih Data Nama. Penerima bisa berupa Vendor atau Customer, tergantung pada saat Anda membayar untuk pembelian atau penerimaan jasa.\n\n3. Cek No: Isi dengan kode atau nomor referensi transaksi yang belum terdaftar, misalnya: 001/01/KK-O/VI/23.\n\n4. Tanggal: Pilih tanggal transaksi kas keluar dengan mengklik pada kalender atau memasukkan tanggal secara manual.\n\nSelanjutnya, tentukan Alokasi Dana dengan mengklik dua kali pada Kode dan pilih Daftar Akun yang sesuai. Setelah itu, masukkan jumlah uang yang dikeluarkan pada kolom "Nilai". Berikan deskripsi yang jelas dan singkat tentang kas keluar tersebut pada kolom Deskripsi, contohnya "Pembayaran Listrik Kantor".\n\nSetelah mengisi semua rincian transaksi dengan benar, periksa kembali data yang telah Anda masukkan untuk memastikan keakuratan. Jika semua informasi sudah benar, klik tombol "Rekam" untuk menyimpan data kas keluar tersebut ke dalam aplikasi Zahir.\n\nDengan mengikuti langkah-langkah di atas, Anda telah berhasil mengisi kas keluar di aplikasi Zahir dengan tepat, dan data keuangan bisnis Anda menjadi lebih teratur dan mudah diakses.',
    docUrl:
        'https://docs.google.com/document/d/1r6qMkjElH6JzuEodQEcp-uI0vCgufkf-/edit?usp=drive_link&ouid=115101106298013546394&rtpof=true&sd=true',
    pptUrl:
        'https://docs.google.com/presentation/d/1r6Lgo_1P5Ze4c1Sr6hZY2X91tvpFmAzy/edit?usp=drive_link&ouid=115101106298013546394&rtpof=true&sd=true',
  ),
  Course(
    imageUrl: 'assets/images/6.jpg',
    videoUrl:
        'https://drive.google.com/file/d/1TMdfgKPngC5kmqioSHe1C9TgkMHjS9LJ/view?usp=drive_link',
    name: 'Input Vendor Baru di Zahir',
    description:
        'Berikut adalah langkah-langkah menginput vendor baru pada aplikasi Zahir:\n\n1. Langkah pertama adalah membuka aplikasi Zahir, kemudian pada tampilan halaman pertama, buka akun "Kas & Bank".\n\n2. Langkah kedua, akan muncul beberapa akun, termasuk "Kas Keluar" dan "Kas Masuk". Pilih akun "Kas Keluar" dan klik dua kali untuk melanjutkan ke slide selanjutnya.\n\n3. Langkah ketiga, setelah tampilan slide penginputan muncul, pilih akun "Baru" dan klik dua kali. Kemudian akan muncul beberapa akun untuk proses penginputan kas keluar, seperti "Akun Kas", "Penerima", "No. Dokumen", dan "Tanggal Transaksi".\n\n4. Langkah keempat, klik pada akun "Penerima" dan pilih menu "Baru", lalu klik dua kali untuk membuka kolom data yang memungkinkan Anda menginput nama dan alamat vendor yang baru.\n\n5. Langkah kelima, setelah data lengkap diisi, pilih menu "Rekam". Dengan demikian, data vendor baru akan langsung terdata dalam aplikasi Zahir.\n\nDengan mengikuti langkah-langkah di atas, Anda telah berhasil menginputkan vendor baru pada aplikasi Zahir. Data vendor tersebut akan tersimpan dengan baik dan dapat diakses untuk keperluan transaksi dan manajemen bisnis Anda.',
    docUrl:
        'https://docs.google.com/document/d/1AlOQ4MC48H-k_Bj_9xqwkFDSKnJbCTbp/edit?usp=drive_link&ouid=115101106298013546394&rtpof=true&sd=true',
    pptUrl:
        'https://docs.google.com/presentation/d/1GYdqRSxpVcsstliFv1X9cLEMXnOGkTty/edit?usp=drive_link&ouid=115101106298013546394&rtpof=true&sd=true',
  ),
  Course(
    imageUrl: 'assets/images/7.jpg',
    videoUrl:
        'https://drive.google.com/file/d/15LfTRAoOcfQ4knZfz-Xo1dFhZgUvLAD9/view?usp=drive_link',
    name: 'Cara Validasi Saldo Kas dan Bank pada Laporan Rekapitulasi',
    description:
        'Cara Sinkronisasi Data Excel & Mutasi Bank.\n\na). Step yang pertama, Pastikan setiap akhir perhitungan transaksi diexcel baik Operasional maupun Program sisa saldo kas & bank harus balance (Seimbang) agar mudah diperhitungkan dengan sisa saldo yang ada di Bank.\n\nb). Step yang kedua, Jumlahkan semua dana yang ada di Bank, baik Operasional maupun Program yang terdata diexcel dan dicantumkan total keseluruhannya pada Rekapitulasi kas (Perakhirbulan) dan diisi total nominalnya pada (Saldo Bank).\n\nc). Step yang ketiga, Jika sudah dijumlahkan semua Dana yang ada di Bank (Operasional & Program) maka sisa hasil Dana harus sesuai dengan Mutasi Bank dimana jumlah Mutasi Bank harus sesuai dengan sisa Dana pada data excel yang ada di Bank.',
    docUrl:
        'https://docs.google.com/document/d/1dC9YkaFPHMzqGjMBn0wSB6qvVzwwecuh/edit?usp=drive_link&ouid=115101106298013546394&rtpof=true&sd=true',
    pptUrl:
        'https://docs.google.com/presentation/d/1U8QRWss5aA6qNewqzedpjm4XM7Ck91kv/edit?usp=drive_link&ouid=115101106298013546394&rtpof=true&sd=true',
  ),
  Course(
    imageUrl: 'assets/images/8.jpg',
    videoUrl:
        'https://drive.google.com/file/d/11zEB3Jaho-yZcUfF5OOH7vB-SVxaKiUL/view?usp=drive_link',
    name: 'Mengecek Mutasi Tranksaksi (Zahir)',
    description:
        'Cara mengecek Mutasi di Aplikasi Zahir\n\n1. Buka aplikasi Zahir\n\n2. Setelah masuk, Anda akan melihat menu utama. Cari dan klik modul "Laporan".\n\n3. Klik ‘’Buku Besar”, setelah itu klik dua kali  “Buku Besar - Mutasi”.\n\n4. Setelah memilih "Buku Besar - Mutasi" terdapat Filter Data. Filter Data otomatis mengisi tanggal  awal bulan berjalan sampai akhir bulan berjalan. Anda dapat mengatur urutan tampilan transaksi berdasarkan tanggal, dan dapat menerapkan filter berdasarkan kategori transaksi.\n\n5. Lalu klik “Ok”',
    docUrl:
        'https://docs.google.com/document/d/1bJ4xFTsT8xJlRo5qqxwSefhohhXSj1Kw/edit?usp=drive_link&ouid=115101106298013546394&rtpof=true&sd=true',
    pptUrl:
        'https://docs.google.com/presentation/d/1qEUpewzK3-zRXKZ82p4X73p3BSdlySNl/edit?usp=drive_link&ouid=115101106298013546394&rtpof=true&sd=true',
  ),
  Course(
    imageUrl: 'assets/images/9.jpg',
    videoUrl:
        'https://drive.google.com/file/d/1L7H2GLQ-2HDx97X4kqmXPP0tgBQSSZrJ/view?usp=drive_link',
    name: 'Tutup Buku Akhir Bulan',
    description:
        'Cara Tutup Buku Akhir Bulan Pada Zahir.\n\na). Step Pertama, masuk pada aplikasi Zahir lalu pada tampilan pertama akan muncul beberapa menu, antara lain : File, Setting, Tutup Buku, Window & Petunjuk.\n\nb). Step yangkedua, Jika ingin menutup buku akhir bulan pilih menu (Tutup Buku) lalu pilih tutup buku akhir bulan.\n\nc). Step yang ketiga, Ikuti proses yang diperintahkan oleh Zahir biasanya sebelum proses berlanjut aplikasi Zahir akan meminta agar membackup data terlebih dahulu, jika sudah terbackup ikuti Langkah-langkah proses tutup buku akhir bulan hingga selesai. \n\nBiasanya tutup buku akhir bulan dilakukan setiap akhir bulan setelah semua transaksi selesai terinput, yang bertujuan agar dapat menginput transaksi-transaksi yang baru pada periode berikutnya.',
    docUrl:
        'https://docs.google.com/document/d/1u84L8knys-c-Jf4lmqPpG2h44JQHCXQi/edit?usp=drive_link&ouid=115101106298013546394&rtpof=true&sd=true',
    pptUrl:
        'https://docs.google.com/presentation/d/19OSejyQBUz8DTFSLWrvGpvVD6Pps6WWV/edit?usp=drive_link&ouid=115101106298013546394&rtpof=true&sd=true',
  ),
  Course(
    imageUrl: 'assets/images/10.jpg',
    videoUrl:
        'https://drive.google.com/file/d/1orHisM0nOgcVuL_QTID6iLBSI4-irB5L/view?usp=drive_link',
    name: 'Tutup Buku Akhir Tahun',
    description:
        'Cara Tutup Buku Akhir Tahun Pada Zahir\n\na). Step Pertama, masuk pada aplikasi Zahir lalu pada tampilan pertama akan muncul beberapa menu, antara lain : File, Setting, Tutup Buku, Window & Petunjuk.\n\nb). Step yangkedua, Jika ingin menutup buku akhir tahun pilih menu (Tutup Buku) lalu pilih tutup buku akhir  tahun.\n\nc). Step yang ketiga, Ikuti proses yang diperintahkan oleh Zahir biasanya sebelum proses berlanjut aplikasi Zahir akan meminta agar membackup data terlebih dahulu, jika sudah terbackup ikuti Langkah-langkah proses tutup buku akhir tahun hingga selesai.\n\nBiasanya tutup buku akhir tahun dilakukan setiap akhir tahun setelah semua transaksi selesai terinput, tepatnya di proses di bulan Januari pada tahun berikutnya, yang bertujuan agar data-data pada tahun yang berjalan terbackup semua.',
    docUrl:
        'https://docs.google.com/document/d/11c6LYoFL-FBx8yPDXt3_6QuE-QcaUsMa/edit?usp=drive_link&ouid=115101106298013546394&rtpof=true&sd=true',
    pptUrl:
        'https://docs.google.com/presentation/d/1KV919G7a7JN4_GBCRZq90X4iSmf3ZNp3/edit?usp=drive_link&ouid=115101106298013546394&rtpof=true&sd=true',
  ),
];
