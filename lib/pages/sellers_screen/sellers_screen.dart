import 'package:flutter/material.dart';
import 'package:novo/pages/sellers_screen/sellers_top_item_screen.dart';

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
                        'HarvestHub Agro',
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
                                  imgUrl: 'assets/images/sell/machine.png',
                                  color: Colors.white,
                                  name: 'Farm Machinery',
                                  style: kStyleTextW500CW.copyWith(color: Colors.blueGrey),
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => const TopItemScreen()),
                                    );
                                  },
                                ),
                              ),
                              const SizedBox(width: 10),
                              Expanded(
                                child: CustomButton(
                                  imgUrl: 'assets/images/sell/fertilizer.png',
                                  color: Colors.white,
                                  name: 'Fertilizers',
                                  style: kStyleTextW500CW.copyWith(color: Colors.blueGrey),
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => const TopItemScreen()),
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: CustomButton(
                                  imgUrl: 'assets/images/sell/seeds.jpg',
                                  color: Colors.white,
                                  name: 'Seeds',
                                  style: kStyleTextW500CW.copyWith(color: Colors.blueGrey),
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => const TopItemScreen()),
                                    );
                                  },
                                ),
                              ),
                              const SizedBox(width: 10),
                              Expanded(
                                child: CustomButton(
                                  imgUrl: 'assets/images/sell/irr.png',
                                  color: Colors.white,
                                  name: 'Irrigation',
                                  style: kStyleTextW500CW.copyWith(color: Colors.blueGrey),
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => const TopItemScreen()),
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: CustomButton(
                                  imgUrl: 'assets/images/sell/waste.png',
                                  color: Colors.white,
                                  name: 'Waste',
                                  style: kStyleTextW500CW.copyWith(color: Colors.blueGrey),
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => const TopItemScreen()),
                                    );
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
