import 'package:flutter/material.dart';
import 'package:novo/themes.dart';
import 'package:novo/widgets/common_widgets.dart';

class CustomButton extends StatelessWidget {
  final Color color;
  final String name;
  final String imgUrl;
  final TextStyle? style;
  final Function() onTap;
  final bool isNetwork;

  const CustomButton({
    super.key,
    required this.color,
    required this.name,
    this.style,
    required this.onTap,
    required this.imgUrl,
    required this.isNetwork,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: onTap,
      child: SizedBox(
        height: MediaQuery.of(context).size.height / 3.2,
        child: Card(
          surfaceTintColor: kColorWhite,
          elevation: 5,
          color: color,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 25.0),
            child: Column(
              children: [
                CommonWidgets(imgUrl: imgUrl, isNetwork: isNetwork),
                const SizedBox(
                  height: 6,
                ),
                Text(
                  name,
                  style: style?.copyWith(fontSize: 20),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
