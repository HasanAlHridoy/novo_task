import 'package:flutter/material.dart';
import 'package:novo/themes.dart';

class CustomButton extends StatelessWidget {
  final Color iconColor;
  final Color color;
  final String name;
  final IconData icon;
  final TextStyle? style;
  final Function() onTap;

  const CustomButton({
    super.key,
    required this.color,
    required this.iconColor,
    required this.name,
    required this.icon,
    this.style,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: onTap,
      child: Card(
        surfaceTintColor: kColorWhite,
        elevation: 5,
        color: color,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 25.0),
          child: Column(
            children: [
              Icon(
                icon,
                size: 100,
                color: iconColor,
              ),
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
    );
  }
}
