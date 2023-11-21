import 'package:flutter/material.dart';
import 'package:novo/pages/crop_doctor_screen/crop_doctor_add_problem_pop_up.dart';
import 'package:novo/pages/crop_doctor_screen/crop_doctor_solution_screen.dart';
import 'package:novo/themes.dart';

import '../../controllers/common_functions.dart';

class CropDoctorScreen extends StatefulWidget {
  const CropDoctorScreen({Key? key}) : super(key: key);

  @override
  State<CropDoctorScreen> createState() => _CropDoctorScreenState();
}

class _CropDoctorScreenState extends State<CropDoctorScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              const SizedBox(height: 20),
              Expanded(
                flex: 3,
                child: Container(
                  height: MediaQuery.of(context).size.height / 3.5,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 5,
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/home/doctor.png',
                        height: MediaQuery.of(context).size.height / 5,
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      Text(
                        'Crop Doctor',
                        style: kStyleTextW500CGR.copyWith(fontSize: 20),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Expanded(
                flex: 7,
                child: StreamBuilder(
                    stream: CommonFunctions().readData('add_problems'),
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        final data = snapshot.data;
                        return ListView(
                          children: data!
                              .map(
                                (e) => SizedBox(
                                  height: 150,
                                  child: InkWell(
                                    highlightColor: Colors.transparent,
                                    splashColor: Colors.transparent,
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => CropDoctorSolutionScreen(
                                            imgUrl: e['imgUrl'],
                                            title: e['title'],
                                            desc: e['description'],
                                          ),
                                        ),
                                      );
                                    },
                                    child: Stack(
                                      alignment: Alignment.topLeft,
                                      children: [
                                        Card(
                                          surfaceTintColor: kColorWhite,
                                          child: Padding(
                                            padding: const EdgeInsets.all(14.0),
                                            child: Row(
                                              children: [
                                                Expanded(
                                                  flex: 3,
                                                  child: Image.network(e['imgUrl']),
                                                ),
                                                const SizedBox(width: 10),
                                                Expanded(
                                                  flex: 7,
                                                  child: Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text(
                                                        e['title'],
                                                        style: kStyleTextW500CP.copyWith(fontSize: 18),
                                                      ),
                                                      Text(
                                                        e['description'],
                                                        overflow: TextOverflow.ellipsis,
                                                        maxLines: 3,
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
                                  ),
                                ),
                              )
                              .toList(),
                        );
                      } else {
                        return const SizedBox.shrink();
                      }
                    }),
              )
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: kColorPrimary,
          child: const Icon(
            Icons.add,
            color: kColorWhite,
          ),
          onPressed: () {
            showDialog(context: context, builder: (context) => const CropDoctorAddProblemPopUp());
          },
        ),
      ),
    );
  }
}
