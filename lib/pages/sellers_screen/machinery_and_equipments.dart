import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../themes.dart';
import '../../widgets/custom_button.dart';

class MachineryAndEquipments extends StatefulWidget {
  const MachineryAndEquipments({Key? key}) : super(key: key);

  @override
  State<MachineryAndEquipments> createState() => _MachineryAndEquipmentsState();
}

class _MachineryAndEquipmentsState extends State<MachineryAndEquipments> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 2,
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
          ),
          Expanded(
            flex: 7,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 15),
                  const Text(
                    'Categories',
                    style: TextStyle(fontSize: 19, fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(height: 10),
                  Expanded(
                      child: GridView.builder(
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 5.0,
                      crossAxisSpacing: 5.0,
                      childAspectRatio: 2 / 2,
                    ),
                    shrinkWrap: true,
                    itemCount: 5,
                    itemBuilder: (BuildContext context, int index) {
                      return CustomButton(
                        icon: Icons.man,
                        color: Colors.white,
                        iconColor: Colors.blueGrey,
                        name: 'Crop Doctor',
                        style: kStyleTextW500CW.copyWith(color: Colors.blueGrey),
                        onTap: () {},
                      );
                    },
                  ))
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
