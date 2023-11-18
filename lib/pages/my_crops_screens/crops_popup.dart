import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:novo/pages/my_crops_screens/DeleteOrConfirm.dart';
import 'package:novo/themes.dart';

class CropsPopUp extends StatefulWidget {
  final String cropName;
  final String imgUrl;

  const CropsPopUp({Key? key, required this.cropName, required this.imgUrl}) : super(key: key);

  @override
  State<CropsPopUp> createState() => _CropsPopUpState();
}

class _CropsPopUpState extends State<CropsPopUp> {
  DateTime dateTime = DateTime.now();
  int counter = 1;

//Functions------------------
  //Pick Date
  pickDate() {
    showDatePicker(
      context: context,
      initialDate: dateTime,
      firstDate: DateTime(DateTime.now().year - 100),
      lastDate: DateTime(DateTime.now().year + 10),
    ).then((value) {
      setState(() {
        dateTime = value!;
      });
    });
  }

  // Add Crops
  // Future addCrops(Map<String, dynamic> map) async {
  //   final docCrop = FirebaseFirestore.instance.collection('add_crops').doc();
  //   await docCrop.set(map);
  // }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      insetPadding: const EdgeInsets.all(10),
      shape: const OutlineInputBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      content: SizedBox(
        height: 300,
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Select Date Of Plantation',
              style: kStyleTextW500CGR.copyWith(fontSize: 18),
            ),
            Row(
              children: [
                Text(
                  dateTime.toString().split(' ')[0],
                  style: const TextStyle(fontSize: 18),
                ),
                IconButton(
                  onPressed: () {
                    pickDate();
                  },
                  icon: const Icon(
                    Icons.calendar_today,
                    size: 25,
                    color: kColorPrimary,
                  ),
                )
              ],
            ),
            const SizedBox(height: 10),
            Text(
              'Select Area Of Plantation',
              style: kStyleTextW500CGR.copyWith(fontSize: 18),
            ),
            const SizedBox(height: 10),
            Align(
              alignment: Alignment.center,
              child: Container(
                width: MediaQuery.of(context).size.width / 2.5,
                decoration: const BoxDecoration(color: kColorPrimary, borderRadius: BorderRadius.all(Radius.circular(3))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                      onPressed: () {
                        if (counter == 1) {
                          return;
                        }
                        setState(() {
                          counter--;
                        });
                      },
                      icon: const Icon(
                        Icons.remove,
                        color: kColorWhite,
                      ),
                    ),
                    Center(
                      child: Text(
                        counter.toString(),
                        style: kStyleTextW500CW,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        counter++;
                        setState(() {});
                      },
                      icon: const Icon(
                        Icons.add,
                        color: kColorWhite,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  '$counter Acre',
                  style: kStyleTextW500CG.copyWith(fontSize: 18, color: Colors.black),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () async {
                final docCrop = FirebaseFirestore.instance.collection('add_crops').doc();
                Map<String, dynamic> crops = {
                  "id": docCrop.id,
                  "cropName": widget.cropName,
                  "imgUrl": widget.imgUrl,
                  "date": dateTime,
                  "total": counter,
                };
                await docCrop.set(crops);
                if (mounted) {
                  Navigator.pop(context);
                  Navigator.pop(context);
                }
              },
              child: Text(
                'Submit',
                style: kStyleTextW500CW.copyWith(fontSize: 20),
              ),
            )
          ],
        ),
      ),
    );
  }
}
