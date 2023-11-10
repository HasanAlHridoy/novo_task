import 'package:flutter/material.dart';
import 'package:novo/themes.dart';

class CropDoctorScreen extends StatefulWidget {
  const CropDoctorScreen({Key? key}) : super(key: key);

  @override
  State<CropDoctorScreen> createState() => _CropDoctorScreenState();
}

class _CropDoctorScreenState extends State<CropDoctorScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              const SizedBox(height: 20),
              Container(
                height: MediaQuery.of(context).size.height / 3.5,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 5,
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.man,
                      size: 100,
                      color: Colors.blueGrey,
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    Text(
                      'Crop Doctor',
                      style: kStyleTextW500CGR.copyWith(fontSize: 20),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Expanded(
                child: ListView.builder(
                  itemCount: 2,
                  itemBuilder: (context, index) {
                    return Stack(
                      alignment: Alignment.topLeft,
                      children: [
                        Card(
                          surfaceTintColor: kColorWhite,
                          child: Padding(
                            padding: const EdgeInsets.all(14.0),
                            child: Row(
                              children: [
                                const Icon(
                                  Icons.rice_bowl_rounded,
                                  size: 75,
                                ),
                                const SizedBox(width: 10),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Sugar Cane',
                                      style: kStyleTextW500CG.copyWith(fontSize: 18, color: Colors.black),
                                    ),
                                    Text(
                                      '12/10/2023',
                                      style: kStyleTextW500CGR.copyWith(fontSize: 16),
                                    ),
                                    Text(
                                      '3 Acre',
                                      style: kStyleTextW500CGR.copyWith(fontSize: 14),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.lightbulb_circle,
                            color: kColorYellow,
                            size: 40,
                          ),
                        )
                      ],
                    );
                  },
                ),
              )
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: kColorPrimary,
          child: const Icon(
            Icons.add,
            color: kColorWhite,
          ),
          onPressed: () {
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(builder: (context) => const CropAddItem()),
            // );
          },
        ),
      ),
    );
  }
}
