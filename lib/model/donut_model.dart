import 'package:tugas_akhir/config/app_asset.dart';

class DonutModel {
  final String img;
  final String nama;
  final String harga;
  final String rating;
  final String deskripsi;

  DonutModel(
      {required this.img,
      required this.nama,
      required this.harga,
      required this.rating,
      required this.deskripsi});
}

final List<DonutModel> itemDonut = [
  DonutModel(
      img: AppAssets.donut1,
      nama: 'Donut 1',
      harga: 'Rp. 5000',
      rating: '4.5',
      deskripsi: 'Sambutlah dunia keajaiban rasa yang dibentuk dengan cinta dan keahlian. Donut kami bukan sekadar gumpalan lembut berbentuk cincin, melainkan karya seni rasa yang mengajak Anda untuk merayakan setiap momen. Dengan kecantikan visual yang memesona dan kelezatan rasa yang tak tertandingi, donut kami adalah pencerita kisah manis yang tak pernah pudar.'),
      DonutModel(
      img: AppAssets.donut2,
      nama: 'Donut 2',
      harga: 'Rp. 5000',
      rating: '4.5',
      deskripsi: 'Di balik setiap warna-warni glazur dan taburan yang memukau, terdapat rahasia dari setiap donut yang kami sajikan. Dari klasik yang timeless hingga inovasi eksotis, setiap donut kami dipersembahkan dengan detail yang penuh perhatian. Kami menggunakan bahan-bahan terbaik, menciptakan kombinasi sempurna antara kelembutan dan kelezatan yang tak terlupakan.'),
      DonutModel(
      img: AppAssets.donut3,
      nama: 'Donut 3',
      harga: 'Rp. 5000',
      rating: '4.5',
      deskripsi: 'Donut kami bukan hanya tentang rasa, tetapi juga tentang pengalaman. Sentuhan lembut donut yang mencair di dalam mulut Anda, dipadu dengan aroma manis yang merayakan momen-momen kebahagiaan. Pagi, siang, atau malam, donut kami adalah pendamping setia untuk menyemarakkan setiap waktu istimewa Anda.'),
      DonutModel(
      img: AppAssets.donut4,
      nama: 'Donut 4',
      harga: 'Rp. 5000',
      rating: '4.5',
      deskripsi: 'Buka pintu ke dunia cita rasa yang tak terbatas. Nikmati sensasi manis dalam setiap gigitan, sambil memilih dari berbagai pilihan topping yang memukau. Donut kami adalah manifestasi dari kebahagiaan dalam bentuk bulat yang siap menyapa Anda setiap kali Anda menginginkan sedikit pelarian dari kehidupan sehari-hari.'),
      DonutModel(
      img: AppAssets.donut5,
      nama: 'Donut 1',
      harga: 'Rp. 5000',
      rating: '4.5',
      deskripsi: 'Inovasi adalah mantra kami, dan setiap donut adalah kanvas di mana kami menuangkan kekreatifan kami. Dari donut klasik yang membangkitkan nostalgia hingga kreasi eksentrik yang menantang batas, setiap gigitan adalah petualangan melintasi citarasa yang luar biasa. Kami tidak hanya membuat donut, kami menciptakan pengalaman rasa yang menggetarkan lidah Anda.')
];
