import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:novo/pages/my_crops_screens/crops_popup.dart';

import '../../themes.dart';
import '../../widgets/custom_button.dart';

class CropAddItem extends StatefulWidget {
  const CropAddItem({Key? key}) : super(key: key);

  @override
  State<CropAddItem> createState() => _CropAddItemState();
}

class _CropAddItemState extends State<CropAddItem> {
  //Read Data From Firebase
  Stream<List<Map>> readData() {
    return FirebaseFirestore.instance.collection('my_crops').snapshots().map((snapshot) => snapshot.docs.map((e) => e.data()).toList());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                Text(
                  'Add Crop',
                  style: kStyleTextW700CW.copyWith(fontSize: 20),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: SizedBox(
                height: 200,
                child: StreamBuilder(
                    stream: readData(),
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        final data = snapshot.data;
                        return ListView(
                            children: data!
                                .map((e) => ListTile(
                                      leading: Image.network(e['imgUrl']),
                                      title: Text(e['cropName'].toString()),
                                    ))
                                .toList());
                      } else {
                        return Center(child: CircularProgressIndicator());
                      }
                    }),
              ))
        ],
      ),
    );
  }
}
//GridView.builder(
//                         gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                           crossAxisCount: 1,
//                           mainAxisSpacing: 5.0,
//                           crossAxisSpacing: 5.0,
//                           childAspectRatio: 3 / 1,
//                         ),
//                         itemBuilder: (context, index) {
//                           return CustomButton(
//                             imgUrl: 'assets/images/home/my_crops.png',
//                             color: Colors.white,
//                             name: 'Crop Doctor',
//                             style: kStyleTextW500CW.copyWith(color: Colors.blueGrey),
//                             onTap: () {
//                               showDialog(context: context, builder: (context) => const CropsPopUp());
//                             },
//                           );
//                         },
//                       );
