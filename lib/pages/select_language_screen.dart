import 'package:flutter/material.dart';
import 'package:novo/pages/home_screen.dart';

import '../themes.dart';
import '../widgets/custom_page_route.dart';

class SelectLanguagePage extends StatefulWidget {
  const SelectLanguagePage({Key? key}) : super(key: key);

  @override
  State<SelectLanguagePage> createState() => _SelectLanguagePageState();
}

class _SelectLanguagePageState extends State<SelectLanguagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kColorWhite,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            Text(
              'HarvestHub Agro',
              style: kStyleTextW700CP.copyWith(fontSize: 48),
            ),
            const SizedBox(height: 12),
            RichText(
              text: TextSpan(
                children: <TextSpan>[
                  TextSpan(
                    text: 'Enriching  ',
                    style: kStyleTextW700CP.copyWith(fontSize: 20),
                  ),
                  TextSpan(
                    text: 'Agriculture ',
                    style: kStyleTextW500CG.copyWith(fontSize: 20),
                  ),
                ],
              ),
            ),
            Image.asset(
              'assets/images/tree.jpg',
              fit: BoxFit.fill,
              width: double.infinity,
              height: 400,
            ),
            const Text(
              'Select Language / বাংলা',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
            Row(
              children: [
                Expanded(
                  child: Card(
                    elevation: 20,
                    surfaceTintColor: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 50,
                            height: 50,
                            decoration: const BoxDecoration(
                              color: kColorPrimary,
                              shape: BoxShape.circle, // This makes the container rounded
                            ),
                            child: Center(child: Text('ব', style: kStyleTextW500CW.copyWith(fontSize: 24))),
                          ),
                          const SizedBox(height: 12),
                          const Text(
                            'বাংলা',
                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Card(
                    elevation: 20,
                    surfaceTintColor: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 50,
                            height: 50,
                            decoration: const BoxDecoration(
                              color: kColorPrimary,
                              shape: BoxShape.circle, // This makes the container rounded
                            ),
                            child: Center(child: Text('E', style: kStyleTextW500CW.copyWith(fontSize: 24))),
                          ),
                          const SizedBox(height: 12),
                          const Text(
                            'English',
                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  CustomPageRoute(
                    child: const HomePage(),
                    direction: AxisDirection.left,
                  ),
                );
              },
              child: Text(
                'Select Language',
                style: kStyleTextW500CW.copyWith(fontSize: 20),
              ),
            )
          ],
        ),
      ),
    );
  }
}
