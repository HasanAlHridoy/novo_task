import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:novo/controllers/common_functions.dart';
import 'package:novo/pages/my_crops_screens/crops_popup.dart';

import '../../themes.dart';
import '../../widgets/custom_button.dart';

class CropAddItem extends StatefulWidget {
  const CropAddItem({Key? key}) : super(key: key);

  @override
  State<CropAddItem> createState() => _CropAddItemState();
}

class _CropAddItemState extends State<CropAddItem> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    'Add Crop',
                    style: kStyleTextW700CW.copyWith(fontSize: 20),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 9,
            child: StreamBuilder(
                stream: CommonFunctions().readData('my_crops'),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    final data = snapshot.data;
                    return GridView.count(
                      padding: const EdgeInsets.symmetric(vertical: 4),
                      crossAxisCount: 2,
                      scrollDirection: Axis.vertical,
                      childAspectRatio: 2 / 2.5,
                      mainAxisSpacing: 10,
                      children: data!
                          .map(
                            (e) => Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 8.0),
                              child: CustomButton(
                                color: Colors.white,
                                name: e['cropName'],
                                imgUrl: e['imgUrl'],
                                style: kStyleTextW500CW.copyWith(color: Colors.blueGrey),
                                isNetwork: true,
                                onTap: () {
                                  showDialog(context: context, builder: (context) => CropsPopUp(cropName: e['cropName'], imgUrl: e['imgUrl']));
                                },
                              ),
                            ),
                          )
                          .toList(),
                    );
                  } else {
                    return const Center(child: CircularProgressIndicator());
                  }
                }),
          ),
        ],
      ),
    );
  }
}
//Column(
//         children: [
//           Container(
//             height: 200,
//             width: double.infinity,
//             decoration: const BoxDecoration(
//               color: kColorPrimary,
//               borderRadius: BorderRadius.only(
//                 bottomLeft: Radius.circular(20),
//                 bottomRight: Radius.circular(20),
//               ),
//             ),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Text(
//                   'HarvestHub Agro',
//                   style: kStyleTextW700CW.copyWith(fontSize: 48),
//                 ),
//                 const SizedBox(height: 6),
//                 Text(
//                   'Add Crop',
//                   style: kStyleTextW700CW.copyWith(fontSize: 20),
//                 ),
//               ],
//             ),
//           ),
//           const SizedBox(height: 10),
//           Container(
//               padding: const EdgeInsets.symmetric(horizontal: 8.0),
//               child: StreamBuilder(
//                   stream: readData(),
//                   builder: (context, snapshot) {
//                     if (snapshot.hasData) {
//                       final data = snapshot.data;
//                       return GridView.count(
//                         crossAxisCount: 2,
//                         scrollDirection: Axis.vertical,
//                         childAspectRatio: 1 / 2,
//                         children: data!
//                             .map(
//                               (e) => CustomButton(
//                                 color: Colors.white,
//                                 name: e['cropName'],
//                                 imgUrl: e['imgUrl'],
//                                 style: kStyleTextW500CW.copyWith(color: Colors.blueGrey),
//                                 onTap: () {
//                                   showDialog(context: context, builder: (context) => const CropsPopUp());
//                                 },
//                               ),
//                             )
//                             .toList(),
//                       );
//                     } else {
//                       return Center(child: CircularProgressIndicator());
//                     }
//                   }))
//         ],
//       ),
