import 'package:flutter/material.dart';
import 'package:novo/pages/my_crops_screens/my_crops_add_item.dart';
import 'package:novo/themes.dart';

class MyCrops extends StatefulWidget {
  const MyCrops({Key? key}) : super(key: key);

  @override
  State<MyCrops> createState() => _MyCropsState();
}

class _MyCropsState extends State<MyCrops> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              height: 200,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: kColorPrimary,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'HarvestHub Agro',
                    style: kStyleTextW700CW.copyWith(fontSize: 48),
                  ),
                  const SizedBox(height: 6),
                  RichText(
                    text: TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                          text: 'Enriching  ',
                          style: kStyleTextW700CW.copyWith(fontSize: 20),
                        ),
                        TextSpan(
                          text: 'Agriculture ',
                          style: kStyleTextW500CG.copyWith(fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 2,
                itemBuilder: (context, index) {
                  return Stack(
                    alignment: Alignment.topRight,
                    children: [
                      Card(
                        surfaceTintColor: kColorWhite,
                        child: Padding(
                          padding: const EdgeInsets.all(14.0),
                          child: Row(
                            children: [
                              const Icon(
                                Icons.rice_bowl_rounded,
                                size: 55,
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
                          Icons.cancel,
                          color: kColorRed,
                          size: 35,
                        ),
                      )
                    ],
                  );
                },
              ),
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: kColorPrimary,
          child: const Icon(
            Icons.add,
            color: kColorWhite,
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const CropAddItem()),
            );
          },
        ),
      ),
    );
  }
}
