import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:tugas_akhir/controller/donut_contoller.dart';
import 'package:tugas_akhir/model/donut_model.dart';

class DetailPage extends StatelessWidget {
  final DonutModel item;

  DetailPage({super.key, required this.item});

  final DonutController donutController = Get.put(DonutController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          //Image
          Expanded(
            flex: 2,
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 5),
                  child: SizedBox(
                      width: double.infinity,
                      height: double.infinity,
                      child: Image.asset(
                        item.img,
                        fit: BoxFit.cover,
                      )),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: SizedBox(
                    width: double.infinity,
                    height: 25,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(25),
                            topRight: Radius.circular(25)),
                        color: Colors.white,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),

          //Detail
          Expanded(
              flex: 3,
              child: Container(
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                      child: Row(
                        children: [
                          Text(
                            item.nama,
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    const Gap(10),
                    Padding(
                      padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        item.harga,
                        style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w600
                              )
                      ),
                      const Gap(5),
                      Row(
                        children: [
                          const Icon(
                            Icons.star,
                            size: 15,
                            color: Colors.amber,
                          ),
                          const Gap(5),
                          Text(
                            item.rating,
                            style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w600
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                    ),
              
                    const Gap(20),
                    SizedBox(
                      width: double.infinity,
                      height: 5,
                      child: Container(color: Colors.blueGrey.shade200),
                    ),
                    const Gap(20),
              
                    //Deskripsi
                    Padding(
                      padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                      child: Text(
                        item.nama,
                        style:
                            TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    const Gap(10),
                    Padding(
                      padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                      child: Text(
                        item.deskripsi,
                        style:
                            TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                      ),
                    ),
              
                    //Button Order
                    Expanded(
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: SizedBox(
                            width: double.infinity,
                            height: 40,
                            child: ElevatedButton(
                                onPressed: () {
                                  donutController.launchwWhatsApp(item.nama);
                                },
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.blue.shade700,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(25))),
                                child: const Text(
                                  'Order',
                                  style: TextStyle(color: Colors.white),
                                )),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
