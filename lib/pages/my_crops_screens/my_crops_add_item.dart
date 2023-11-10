import 'package:flutter/material.dart';
import 'package:novo/pages/my_crops_screens/crops_popup.dart';

import '../../themes.dart';

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
                  'NOVO',
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
                const SizedBox(width: 15),
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

class CustomButton extends StatelessWidget {
  final Color iconColor;
  final Color color;
  final String name;
  final IconData icon;
  final TextStyle? style;
  final Function() onTap;

  const CustomButton({
    super.key,
    required this.color,
    required this.iconColor,
    required this.name,
    required this.icon,
    this.style,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        elevation: 10,
        color: color,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 25.0),
          child: Column(
            children: [
              Icon(
                icon,
                size: 100,
                color: iconColor,
              ),
              const SizedBox(
                height: 6,
              ),
              Text(
                name,
                style: style?.copyWith(fontSize: 20),
              )
            ],
          ),
        ),
      ),
    );
  }
}
