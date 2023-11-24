import 'package:flutter/material.dart';
import 'package:novo/pages/select_language_screen.dart';
import 'package:novo/themes.dart';

import '../widgets/custom_page_route.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  String email = 'agro@gmail.com';
  String password = '1234';

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
                            'HarvestHub Agro',
                            style: kStyleTextW700CP.copyWith(fontSize: 42),
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
                  controller: emailController,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                      border: InputBorder.none, // Hide the border
                      hintText: 'Email',
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
                  controller: passwordController,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    border: InputBorder.none, // Hide the border
                    hintText: 'Password',
                    hintStyle: TextStyle(
                      color: Colors.grey.shade500,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 15),
            ElevatedButton(
              onPressed: () {
                if (emailController.text == 'agro@gmail.com' && passwordController.text == '1234') {
                  Navigator.of(context).push(
                    CustomPageRoute(
                      child: const SelectLanguagePage(),
                      direction: AxisDirection.left,
                    ),
                  );
                } else {
                  const snackBar = SnackBar(
                    content: Text('wrong email or password'),
                    backgroundColor: Colors.red,
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                }
              },
              child: Text(
                'Log in',
                style: kStyleTextW500CW.copyWith(fontSize: 20),
              ),
            )
          ],
        ),
      ),
    );
  }
}
