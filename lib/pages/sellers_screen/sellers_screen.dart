import 'package:flutter/material.dart';

import '../../themes.dart';
import '../../widgets/custom_button.dart';

class SellersScreen extends StatefulWidget {
  const SellersScreen({Key? key}) : super(key: key);

  @override
  State<SellersScreen> createState() => _SellersScreenState();
}

class _SellersScreenState extends State<SellersScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            Column(
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
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 15),
                      const Text(
                        'Categories',
                        style: TextStyle(fontSize: 19, fontWeight: FontWeight.w700),
                      ),
                      const SizedBox(height: 10),
                      Column(
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: CustomButton(
                                  icon: Icons.directions_ferry_outlined,
                                  color: Colors.white,
                                  iconColor: Colors.yellow.shade900,
                                  name: 'Farm Machinery',
                                  style: kStyleTextW500CW.copyWith(color: Colors.blueGrey),
                                  onTap: () {
                                    // Navigator.push(
                                    //   context,
                                    //   MaterialPageRoute(builder: (context) => const CropDoctorScreen()),
                                    // );
                                  },
                                ),
                              ),
                              const SizedBox(width: 10),
                              Expanded(
                                child: CustomButton(
                                  icon: Icons.shopping_bag,
                                  color: Colors.white,
                                  iconColor: Colors.yellow.shade700,
                                  name: 'Fertilizers',
                                  style: kStyleTextW500CW.copyWith(color: Colors.blueGrey),
                                  onTap: () {
                                    // Navigator.push(
                                    //   context,
                                    //   MaterialPageRoute(builder: (context) => const CropDoctorScreen()),
                                    // );
                                  },
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: CustomButton(
                                  icon: Icons.gamepad_rounded,
                                  color: Colors.white,
                                  iconColor: Colors.brown,
                                  name: 'Seeds',
                                  style: kStyleTextW500CW.copyWith(color: Colors.blueGrey),
                                  onTap: () {
                                    // Navigator.push(
                                    //   context,
                                    //   MaterialPageRoute(builder: (context) => const CropDoctorScreen()),
                                    // );
                                  },
                                ),
                              ),
                              const SizedBox(width: 10),
                              Expanded(
                                child: CustomButton(
                                  icon: Icons.wb_iridescent_outlined,
                                  color: Colors.white,
                                  iconColor: Colors.green.shade700,
                                  name: 'Irrigation',
                                  style: kStyleTextW500CW.copyWith(color: Colors.blueGrey),
                                  onTap: () {
                                    // Navigator.push(
                                    //   context,
                                    //   MaterialPageRoute(builder: (context) => const CropDoctorScreen()),
                                    // );
                                  },
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: CustomButton(
                                  icon: Icons.agriculture,
                                  color: Colors.white,
                                  iconColor: Colors.green.shade900,
                                  name: 'Waste',
                                  style: kStyleTextW500CW.copyWith(color: Colors.blueGrey),
                                  onTap: () {
                                    // Navigator.push(
                                    //   context,
                                    //   MaterialPageRoute(builder: (context) => const CropDoctorScreen()),
                                    // );
                                  },
                                ),
                              ),
                              const SizedBox(width: 10),
                              const Expanded(
                                child: SizedBox.shrink(),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
