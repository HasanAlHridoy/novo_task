import 'package:flutter/material.dart';

import '../../themes.dart';

class CropDoctorSolutionScreen extends StatefulWidget {
  final String imgUrl;
  final String title;
  final String desc;

  const CropDoctorSolutionScreen({Key? key, required this.imgUrl, required this.title, required this.desc}) : super(key: key);

  @override
  State<CropDoctorSolutionScreen> createState() => _CropDoctorSolutionScreenState();
}

class _CropDoctorSolutionScreenState extends State<CropDoctorSolutionScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kColorWhite,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              Stack(
                alignment: Alignment.topLeft,
                children: [
                  Card(
                    surfaceTintColor: kColorWhite,
                    child: Padding(
                      padding: const EdgeInsets.all(14.0),
                      child: Row(
                        children: [
                          Expanded(flex: 3, child: Image.network(widget.imgUrl)),
                          const SizedBox(width: 10),
                          Expanded(
                            flex: 7,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  widget.title,
                                  style: kStyleTextW500CP.copyWith(fontSize: 18),
                                ),
                                Text(
                                  widget.desc,
                                  style: kStyleTextW500CGR.copyWith(fontSize: 16),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  const Icon(
                    Icons.lightbulb_sharp,
                    color: kColorGreen,
                    size: 50,
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Text(
                'Solutions',
                style: kStyleTextW500CP.copyWith(fontSize: 18),
              ),
              const SizedBox(height: 10),
              Text(
                'Pending',
                style: kStyleTextW500CGR.copyWith(fontSize: 16),
              ),
              const Spacer(),
              Image.network(
                  'https://img.freepik.com/premium-vector/paddy-rice-field-background_267448-280.jpg?size=626&ext=jpg&ga=GA1.1.386372595.1698364800&semt=ais')
            ],
          ),
        ),
      ),
    );
  }
}
