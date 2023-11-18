import 'package:flutter/material.dart';

class CommonWidgets extends StatelessWidget {
  final String imgUrl;
  final bool isNetwork;

  const CommonWidgets({Key? key, required this.imgUrl, required this.isNetwork}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return isNetwork == true
        ? Image.network(
            imgUrl,
            height: MediaQuery.of(context).size.height / 6,
          )
        : Image.asset(
            imgUrl,
            height: MediaQuery.of(context).size.height / 6,
          );
  }
}
