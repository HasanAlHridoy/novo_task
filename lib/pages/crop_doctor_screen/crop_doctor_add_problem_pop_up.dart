import 'package:flutter/material.dart';

import '../../themes.dart';

class CropDoctorAddProblemPopUp extends StatefulWidget {
  const CropDoctorAddProblemPopUp({Key? key}) : super(key: key);

  @override
  State<CropDoctorAddProblemPopUp> createState() => _CropDoctorAddProblemPopUpState();
}

class _CropDoctorAddProblemPopUpState extends State<CropDoctorAddProblemPopUp> {
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
        height: MediaQuery.of(context).size.height / 1.55,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Ask Help To Crop Doctor',
                style: kStyleTextW500CGR.copyWith(fontSize: 17, color: Colors.black54),
              ),
              const SizedBox(height: 15),
              Container(
                height: 250,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Colors.black54, // Border color
                    width: 1, // Border width
                  ),
                ),
                child: const Icon(
                  Icons.camera_alt_outlined,
                  size: 60,
                  color: kColorGrey,
                ),
              ),
              const SizedBox(height: 15),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Title',
                  contentPadding: const EdgeInsets.symmetric(vertical: 18.0, horizontal: 10),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                    borderSide: const BorderSide(
                      color: Colors.black87, // Border color
                      width: 1.0, // Border width
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 15),
              TextFormField(
                maxLines: 3,
                decoration: InputDecoration(
                  alignLabelWithHint: true,
                  labelText: 'Description',
                  contentPadding: const EdgeInsets.symmetric(vertical: 18.0, horizontal: 10),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                    borderSide: const BorderSide(
                      color: Colors.black87, // Border color
                      width: 1.0, // Border width
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 15),
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  'Upload',
                  style: kStyleTextW500CW.copyWith(fontSize: 20),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
