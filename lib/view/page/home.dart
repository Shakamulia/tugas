import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:tugas_akhir/controller/donut_contoller.dart';
import 'package:tugas_akhir/model/donut_model.dart';
import 'package:tugas_akhir/view/widget/card_donut.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final DonutController donutController = Get.put(DonutController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Judul
            const Text(
              'Experience the\ngreat donut',
              style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            const Gap(10),
            const Text('Our daily healthy donut',
                style: TextStyle(fontSize: 18)),

            //GridView
            const Gap(10),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemCount: itemDonut.length,
                itemBuilder: (context, index) {
                  return ZoomTapAnimation(
                      onTap: () {
                        donutController.openDetailsPage(itemDonut[index]);
                      },
                      child: CardDonut(
                          img: itemDonut[index].img,
                          nama: itemDonut[index].nama,
                          harga: itemDonut[index].harga,
                          rating: itemDonut[index].rating));
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
