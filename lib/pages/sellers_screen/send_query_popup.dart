import 'package:flutter/material.dart';

import '../../themes.dart';

class SendQueryPopUp extends StatefulWidget {
  const SendQueryPopUp({Key? key}) : super(key: key);

  @override
  State<SendQueryPopUp> createState() => _SendQueryPopUpState();
}

class _SendQueryPopUpState extends State<SendQueryPopUp> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      insetPadding: const EdgeInsets.all(10),
      shape: const OutlineInputBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      content: SizedBox(
        height: MediaQuery.of(context).size.height / 2.2,
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Thank You..!!',
              style: kStyleTextW500CGR.copyWith(color: Colors.black87, fontSize: 18),
            ),
            const SizedBox(height: 10),
            Image.asset('assets/images/sell/images.png'),
            const SizedBox(height: 10),
            Text(
              'Your query is submitted successfully. We will contact with you soon',
              textAlign: TextAlign.center,
              style: kStyleTextW500CGR.copyWith(color: Colors.black87, fontSize: 18),
            ),
            const Spacer(),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                'Ok',
                style: kStyleTextW500CW.copyWith(fontSize: 20),
              ),
            )
          ],
        ),
      ),
    );
  }
}
