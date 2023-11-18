import 'package:flutter/material.dart';

import '../../themes.dart';
import '../../widgets/custom_button.dart';

class SelectCropScreen extends StatefulWidget {
  const SelectCropScreen({Key? key}) : super(key: key);

  @override
  State<SelectCropScreen> createState() => _SelectCropScreenState();
}

class _SelectCropScreenState extends State<SelectCropScreen> {
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
                  'Select Crop :',
                  style: kStyleTextW700CW.copyWith(fontSize: 20),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              children: [
                Expanded(
                  child: CustomButton(
                    imgUrl: 'assets/images/home/my_crops.png',
                    color: Colors.white,
                    name: 'Crop Doctor',
                    style: kStyleTextW500CW.copyWith(color: Colors.blueGrey),
                    onTap: () {},
                    isNetwork: false,
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: CustomButton(
                    imgUrl: 'assets/images/home/my_crops.png',
                    color: Colors.white,
                    name: 'Crop Doctor',
                    style: kStyleTextW500CW.copyWith(color: Colors.blueGrey),
                    isNetwork: false,
                    onTap: () {},
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
