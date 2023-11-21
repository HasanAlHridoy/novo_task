import 'package:flutter/material.dart';

import '../../controllers/common_functions.dart';
import '../../themes.dart';
import '../../widgets/custom_button.dart';

class SelectCropScreen extends StatefulWidget {
  const SelectCropScreen({Key? key}) : super(key: key);

  @override
  State<SelectCropScreen> createState() => _SelectCropScreenState();
}

class _SelectCropScreenState extends State<SelectCropScreen> {
  Map<String, dynamic> getCropData = {};

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
                    'Select Crop :',
                    style: kStyleTextW700CW.copyWith(fontSize: 20),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 10),
          Expanded(
            flex: 9,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
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
                                    getCropData = {'name': e['cropName'], 'imgUrl': e['imgUrl']};
                                    Navigator.pop(context, getCropData);
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
          ),
        ],
      ),
    );
  }
}
//Row(
//                 children: [
//                   Expanded(
//                     child: CustomButton(
//                       imgUrl: 'assets/images/home/my_crops.png',
//                       color: Colors.white,
//                       name: 'Crop Doctor',
//                       style: kStyleTextW500CW.copyWith(color: Colors.blueGrey),
//                       onTap: () {},
//                       isNetwork: false,
//                     ),
//                   ),
//                   const SizedBox(width: 10),
//                   Expanded(
//                     child: CustomButton(
//                       imgUrl: 'assets/images/home/my_crops.png',
//                       color: Colors.white,
//                       name: 'Crop Doctor',
//                       style: kStyleTextW500CW.copyWith(color: Colors.blueGrey),
//                       isNetwork: false,
//                       onTap: () {},
//                     ),
//                   ),
//                 ],
//               ),
