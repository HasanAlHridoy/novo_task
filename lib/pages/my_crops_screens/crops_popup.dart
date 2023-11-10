import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:novo/themes.dart';

class CropsPopUp extends StatefulWidget {
  const CropsPopUp({Key? key}) : super(key: key);

  @override
  State<CropsPopUp> createState() => _CropsPopUpState();
}

class _CropsPopUpState extends State<CropsPopUp> {
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
        height: 300,
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Select Date Of Plantation',
              style: kStyleTextW500CGR.copyWith(fontSize: 18),
            ),
            Row(
              children: [
                const Text(
                  'Select',
                  style: TextStyle(fontSize: 18),
                ),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.calendar_today,
                      size: 25,
                    ))
              ],
            ),
            const SizedBox(height: 10),
            Text(
              'Select Area Of Plantation',
              style: kStyleTextW500CGR.copyWith(fontSize: 18),
            ),
            const SizedBox(height: 10),
            Align(
              alignment: Alignment.center,
              child: Container(
                width: MediaQuery.of(context).size.width / 2.5,
                decoration: const BoxDecoration(color: kColorPrimary, borderRadius: BorderRadius.all(Radius.circular(3))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.remove,
                        color: kColorWhite,
                      ),
                    ),
                    const Center(
                      child: Text(
                        '1',
                        style: kStyleTextW500CW,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.add,
                        color: kColorWhite,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  '3 Acre',
                  style: kStyleTextW500CG.copyWith(fontSize: 18, color: Colors.black),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                'Submit',
                style: kStyleTextW500CW.copyWith(fontSize: 20),
              ),
            )
          ],
        ),
      ),
    );
  }
}
