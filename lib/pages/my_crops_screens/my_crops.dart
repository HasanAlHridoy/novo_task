import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:novo/controllers/common_functions.dart';
import 'package:novo/pages/my_crops_screens/my_crops_add_item.dart';
import 'package:novo/themes.dart';

import 'DeleteOrConfirm.dart';

class MyCrops extends StatefulWidget {
  const MyCrops({Key? key}) : super(key: key);

  @override
  State<MyCrops> createState() => _MyCropsState();
}

class _MyCropsState extends State<MyCrops> {
  String timeStampToDateFormat(Timestamp ts) {
    DateTime dateTime = ts.toDate();
    return DateFormat('dd/MM/yyyy').format(dateTime);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              flex: 3,
              child: Container(
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
                    Text(
                      'My Crops',
                      style: kStyleTextW700CW.copyWith(fontSize: 20),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 9,
              child: StreamBuilder(
                  stream: CommonFunctions().readData('add_crops'),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      final data = snapshot.data;

                      return ListView(
                        children: data!
                            .map(
                              (e) => Stack(
                                alignment: Alignment.topRight,
                                children: [
                                  Card(
                                    surfaceTintColor: kColorWhite,
                                    child: Padding(
                                      padding: const EdgeInsets.all(14.0),
                                      child: Row(
                                        children: [
                                          Expanded(
                                            flex: 2,
                                            child: Image.network(e['imgUrl']),
                                          ),
                                          const SizedBox(width: 10),
                                          Expanded(
                                            flex: 8,
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  e['cropName'].toString(),
                                                  style: kStyleTextW500CG.copyWith(fontSize: 18, color: Colors.black),
                                                ),
                                                Text(
                                                  timeStampToDateFormat(e['date']),
                                                  style: kStyleTextW500CGR.copyWith(fontSize: 16),
                                                ),
                                                Text(
                                                  '${e['total'].toString()} Acre',
                                                  style: kStyleTextW500CGR.copyWith(fontSize: 14),
                                                ),
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  IconButton(
                                    onPressed: () {
                                      showDialog(context: context, builder: (context) => DeleteOrConfirm(docId: e['id']));
                                    },
                                    icon: const Icon(
                                      Icons.cancel,
                                      color: kColorRed,
                                      size: 35,
                                    ),
                                  )
                                ],
                              ),
                            )
                            .toList(),
                      );
                    } else {
                      return const SizedBox.shrink();
                    }
                  }),
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
