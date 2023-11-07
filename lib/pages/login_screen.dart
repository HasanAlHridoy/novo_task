import 'package:flutter/material.dart';
import 'package:novo/themes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kColorBackground,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: SizedBox(
                width: double.infinity,
                height: 300,
                child: Card(
                    surfaceTintColor: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'NOVO',
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
                        ],
                      ),
                    )),
              ),
            ),
            const SizedBox(height: 10),
            Container(
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(50),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 5,
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: TextField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                      border: InputBorder.none, // Hide the border
                      hintText: 'Mobile',
                      hintStyle: TextStyle(color: Colors.grey.shade500)),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Container(
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(50),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 5,
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: TextField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                      border: InputBorder.none, // Hide the border
                      hintText: 'OTP',
                      hintStyle: TextStyle(color: Colors.grey.shade300)),
                ),
              ),
            ),
            const SizedBox(height: 15),
            ElevatedButton(
              onPressed: () {},
              child:  Text(
                'Send OTP',
                style: kStyleTextW500CW.copyWith(fontSize: 20),
              ),
            )
          ],
        ),
      ),
    );
  }
}
