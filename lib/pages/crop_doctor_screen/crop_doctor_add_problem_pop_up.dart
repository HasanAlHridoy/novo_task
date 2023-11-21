import 'dart:io';
import 'dart:typed_data';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../../controllers/common_functions.dart';
import '../../themes.dart';

class CropDoctorAddProblemPopUp extends StatefulWidget {
  const CropDoctorAddProblemPopUp({Key? key}) : super(key: key);

  @override
  State<CropDoctorAddProblemPopUp> createState() => _CropDoctorAddProblemPopUpState();
}

class _CropDoctorAddProblemPopUpState extends State<CropDoctorAddProblemPopUp> {
  // Uint8List? _image;
  //
  // void selectImage() async {
  //   Uint8List img = await CommonFunctions().pickImage(ImageSource.gallery);
  //   setState(() {
  //     _image = img;
  //   });
  // }
  bool isLoading = false;
  XFile? file;
  String imgUrl = '';
  String uniqueName = DateTime.now().toString();
  TextEditingController titleController = TextEditingController();
  TextEditingController descController = TextEditingController();

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
              InkWell(
                onTap: () async {
                  //pick Image
                  ImagePicker img = ImagePicker();
                  file = await img.pickImage(source: ImageSource.camera); // storage
                },
                child: Container(
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
              ),
              const SizedBox(height: 15),
              TextFormField(
                controller: titleController,
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
                controller: descController,
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
              isLoading
                  ? const Center(child: CircularProgressIndicator())
                  : ElevatedButton(
                      onPressed: () async {
                        if (file != null) {
                          setState(() {
                            isLoading = true;
                          });
                          Reference imgRef = FirebaseStorage.instance.ref().child('images').child(uniqueName);
                          try {
                            Uint8List fileBytes = await file!.readAsBytes();
                            String contentType = file!.path.split('.').last == 'png' ? 'image/png' : 'image/jpeg';
                            // Upload the file with specified content type
                            await imgRef.putData(fileBytes, SettableMetadata(contentType: contentType));
                            imgUrl = await imgRef.getDownloadURL();

                            final getDoc = FirebaseFirestore.instance.collection('add_problems').doc();
                            Map<String, dynamic> addProblems = {
                              "id": getDoc.id,
                              "title": titleController.text,
                              "description": descController.text,
                              "imgUrl": imgUrl,
                            };
                            await getDoc.set(addProblems);
                            if (mounted) {
                              Navigator.pop(context);
                            }
                            setState(() {
                              isLoading = false;
                            });
                          } catch (e) {
                            print(e);
                          }
                        }
                      },
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
