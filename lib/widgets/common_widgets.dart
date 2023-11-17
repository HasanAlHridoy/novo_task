import 'package:flutter/material.dart';

class CommonWidgets extends StatelessWidget {
  final String imgUrl;

  const CommonWidgets({Key? key, required this.imgUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      imgUrl,
      height: MediaQuery.of(context).size.height / 6,
    );
  }
}
