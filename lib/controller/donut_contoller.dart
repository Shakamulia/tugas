import 'package:get/get.dart';
import 'package:tugas_akhir/model/donut_model.dart';
import 'package:tugas_akhir/view/page/detail.dart';
import 'package:url_launcher/url_launcher.dart';

class DonutController extends GetxController {
  void openDetailsPage(DonutModel item) {
    Get.to(DetailPage(item: item));
  }

  void launchwWhatsApp(String donut) async {
    var contact = "+623141274958";
    var url =
        "whatsapp://send?phone=$contact&text=Assalamualaikum, Saya mau order $donut";

    try {
      await launchUrl(Uri.parse(url));
    } on Exception {
      print('Whatsapp is not installed');
    }
  }
}
