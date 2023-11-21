import 'package:flutter/material.dart';

import '../../controllers/common_functions.dart';
import '../../themes.dart';

class BazarRatesScreen extends StatefulWidget {
  const BazarRatesScreen({Key? key}) : super(key: key);

  @override
  State<BazarRatesScreen> createState() => _BazarRatesScreenState();
}

class _BazarRatesScreenState extends State<BazarRatesScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
                      'Bazar Rates',
                      style: kStyleTextW700CW.copyWith(fontSize: 20),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
              flex: 9,
              child: StreamBuilder(
                  stream: CommonFunctions().readData('bazar_rate'),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      final data = snapshot.data;
                      return ListView(
                        children: data!
                            .map((e) => Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 6),
                                  child: Stack(
                                    children: [
                                      Container(
                                        width: MediaQuery.of(context).size.width,
                                        padding: EdgeInsets.all(8),
                                        height: 70,
                                        decoration: BoxDecoration(
                                          color: kColorWhite,
                                          borderRadius: BorderRadius.circular(5),
                                        ),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.end,
                                          children: [
                                            Text(
                                              e['price'],
                                              style: TextStyle(fontSize: 18),
                                            ),
                                            Text(
                                              'Modal Price',
                                              style: kStyleTextW500CGR.copyWith(fontSize: 14),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        width: MediaQuery.of(context).size.width / 1.5,
                                        padding: EdgeInsets.all(8),
                                        height: 70,
                                        decoration: const BoxDecoration(
                                          color: kColorPrimary,
                                          borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(50),
                                            bottomRight: Radius.circular(50),
                                            bottomLeft: Radius.circular(6),
                                            topLeft: Radius.circular(6),
                                          ),
                                        ),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              e['title'],
                                              style: kStyleTextW500CW.copyWith(fontSize: 18),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ))
                            .toList(),
                      );
                    } else {
                      return const Center(child: CircularProgressIndicator());
                    }
                  }),
            )
          ],
        ),
      ),
    );
  }
}
