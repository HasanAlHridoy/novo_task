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
            child: Row(
              children: [
                Expanded(
                  child: CustomButton(
                    icon: Icons.man,
                    color: Colors.white,
                    iconColor: Colors.blueGrey,
                    name: 'Crop Doctor',
                    style: kStyleTextW500CW.copyWith(color: Colors.blueGrey),
                    onTap: () {
                      showDialog(context: context, builder: (context) => const CropsPopUp());
                    },
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: CustomButton(
                    icon: Icons.rice_bowl,
                    color: Colors.white,
                    iconColor: Colors.blueGrey,
                    name: 'Crop Doctor',
                    style: kStyleTextW500CW.copyWith(color: Colors.blueGrey),
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
