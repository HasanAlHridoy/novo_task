import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../../themes.dart';
import '../../widgets/custom_form_field.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController stateController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController postcodeController = TextEditingController();
  TextEditingController authCardController = TextEditingController();
  TextEditingController passController = TextEditingController();
  TextEditingController bankNameController = TextEditingController();
  TextEditingController accController = TextEditingController();
  TextEditingController holderController = TextEditingController();
  TextEditingController codeController = TextEditingController();
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 200,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: kColorPrimary,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'HarvestHub Agro',
                      style: kStyleTextW700CW.copyWith(fontSize: 48),
                    ),
                    const SizedBox(height: 6),
                    Text(
                      'Profile',
                      style: kStyleTextW700CW.copyWith(fontSize: 20),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 15),
                    const Text(
                      'Profile Information',
                      style: TextStyle(fontSize: 19, fontWeight: FontWeight.w700),
                    ),
                    const SizedBox(height: 10),
                    ProfileCustomFormField(
                      label: 'Full Name',
                      controller: nameController,
                    ),
                    const SizedBox(height: 10),
                    ProfileCustomFormField(
                      label: 'State',
                      controller: stateController,
                    ),
                    const SizedBox(height: 10),
                    ProfileCustomFormField(
                      label: 'City',
                      controller: cityController,
                    ),
                    const SizedBox(height: 10),
                    ProfileCustomFormField(
                      label: 'Postcode',
                      controller: postcodeController,
                    ),
                    const SizedBox(height: 10),
                    ProfileCustomFormField(
                      label: 'Author Card No',
                      controller: authCardController,
                    ),
                    const SizedBox(height: 10),
                    ProfileCustomFormField(
                      label: 'Pass Card No',
                      controller: passController,
                    ),
                    const SizedBox(height: 15),
                    const Text(
                      'Bank Details',
                      style: TextStyle(fontSize: 19, fontWeight: FontWeight.w700),
                    ),
                    const SizedBox(height: 10),
                    ProfileCustomFormField(
                      label: 'Bank Name',
                      controller: bankNameController,
                    ),
                    const SizedBox(height: 10),
                    ProfileCustomFormField(
                      label: 'Account Number',
                      controller: accController,
                    ),
                    const SizedBox(height: 10),
                    ProfileCustomFormField(
                      label: 'Account Holder Name',
                      controller: holderController,
                    ),
                    const SizedBox(height: 10),
                    ProfileCustomFormField(
                      label: 'Code',
                      controller: codeController,
                    ),
                    const SizedBox(height: 10),
                    isLoading
                        ? const Center(child: CircularProgressIndicator())
                        : ElevatedButton(
                            onPressed: () async {
                              setState(() {
                                isLoading = true;
                              });
                              final getDoc = FirebaseFirestore.instance.collection('add_profile').doc();
                              print(nameController.text);
                              Map<String, dynamic> profile = {
                                "id": getDoc.id,
                                "name": nameController.text,
                                "state": stateController.text,
                                "city": cityController.text,
                                "postcode": postcodeController.text,
                                "authorCard": authCardController.text,
                                "passCard": passController.text,
                                "bankName": bankNameController.text,
                                "accNumber": accController.text,
                                "holderName": holderController.text,
                                "code": codeController.text,
                              };
                              await getDoc.set(profile);
                              if (mounted) {
                                Navigator.pop(context);
                              }
                              setState(() {
                                isLoading = false;
                              });
                            },
                            child: Text(
                              'Add',
                              style: kStyleTextW500CW.copyWith(fontSize: 18),
                            ),
                          ),
                    const SizedBox(height: 10),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
