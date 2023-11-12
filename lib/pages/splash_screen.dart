import 'package:flutter/material.dart';
import 'package:novo/pages/home_screen.dart';
import 'package:novo/themes.dart';
import 'package:novo/widgets/custom_page_route.dart';

import 'login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushAndRemoveUntil(
          context,
          CustomPageRoute(
            child: const LoginPage(),
            direction: AxisDirection.left,
          ),
          (route) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kColorPrimary,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'HarvestHub Agro',
              style: kStyleTextW700CW.copyWith(fontSize: 48),
            ),
            const SizedBox(height: 12),
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
    );
  }
}
