import 'package:flutter/material.dart';

import '../themes.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double sw = MediaQuery.of(context).size.width;
    double sh = MediaQuery.of(context).size.height;
    return Scaffold(
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                color: kColorPrimary,
                height: sh / 2.2,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 4),
                      child: Text(
                        'Your Dashboard',
                        style: TextStyle(fontSize: 19, fontWeight: FontWeight.w700),
                      ),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: CustomButton(
                            icon: Icons.ac_unit_outlined,
                            color: Colors.blue.shade800,
                            iconColor: Colors.greenAccent,
                            name: 'My Crops',
                            style: kStyleTextW500CW,
                          ),
                        ),
                        const SizedBox(width: 15),
                        Expanded(
                          child: CustomButton(
                            icon: Icons.account_circle,
                            color: Colors.yellow.shade600,
                            iconColor: Colors.teal,
                            name: 'Profile',
                            style: kStyleTextW500CW,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: CustomButton(
                              icon: Icons.man,
                              color: Colors.white,
                              iconColor: Colors.blueGrey,
                              name: 'Crop Doctor',
                              style: kStyleTextW500CW.copyWith(color: Colors.blueGrey)),
                        ),
                        const SizedBox(width: 15),
                        const Expanded(
                          child: CustomButton(
                            icon: Icons.sell_outlined,
                            color: Colors.lightGreen,
                            iconColor: Colors.brown,
                            name: 'Sellers',
                            style: kStyleTextW500CW,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: CustomButton(
                            icon: Icons.ac_unit_outlined,
                            color: Colors.blue.shade800,
                            iconColor: Colors.greenAccent,
                            name: 'My Crops',
                            style: kStyleTextW500CW,
                          ),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Expanded(
                          child: CustomButton(
                            icon: Icons.account_circle,
                            color: Colors.yellow.shade600,
                            iconColor: Colors.teal,
                            name: 'Profile',
                            style: kStyleTextW500CW,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: CustomButton(
                            icon: Icons.ac_unit_outlined,
                            color: Colors.blue.shade800,
                            iconColor: Colors.greenAccent,
                            name: 'My Crops',
                            style: kStyleTextW500CW,
                          ),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Expanded(
                          child: CustomButton(
                            icon: Icons.account_circle,
                            color: Colors.yellow.shade600,
                            iconColor: Colors.teal,
                            name: 'Profile',
                            style: kStyleTextW500CW,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final Color iconColor;
  final Color color;
  final String name;
  final IconData icon;
  final TextStyle? style;

  const CustomButton({
    super.key,
    required this.color,
    required this.iconColor,
    required this.name,
    required this.icon,
    this.style,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
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
    );
  }
}
