import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:novo/pages/sellers_screen/item_description_screen.dart';

import '../../themes.dart';
import '../../widgets/custom_button.dart';

class TopItemScreen extends StatefulWidget {
  const TopItemScreen({Key? key}) : super(key: key);

  @override
  State<TopItemScreen> createState() => _TopItemScreenState();
}

class _TopItemScreenState extends State<TopItemScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
                    'Top Items',
                    style: TextStyle(fontSize: 19, fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(height: 10),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const ItemDescriptionScreen()),
                      );
                    },
                    highlightColor: Colors.transparent,
                    splashColor: Colors.transparent,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                  height: 200,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      image: NetworkImage(
                                        'https://5.imimg.com/data5/SELLER/Default/2021/1/AD/RL/EK/57431554/500-watt-hydromax-soldering-machine-500x500.jpg',
                                      ),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Container(
                                        height: 30,
                                        color: Colors.black.withOpacity(0.7),
                                        width: double.infinity,
                                        child: const Align(
                                          alignment: Alignment.center,
                                          child: Text(
                                            'Hydromax Machine',
                                            style: kStyleTextW500CW,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: 35,
                                        color: Colors.grey.shade400,
                                        width: double.infinity,
                                        child: const Align(
                                          alignment: Alignment.center,
                                          child: Text(
                                            '\$ 45000000',
                                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                                          ),
                                        ),
                                      ),
                                    ],
                                  )),
                            ),
                            const SizedBox(width: 10),
                            const Expanded(child: SizedBox.shrink()),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
