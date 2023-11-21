import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:novo/pages/khata_book_screen/select_crop_screen.dart';

import '../../themes.dart';

class AddExpenseScreen extends StatefulWidget {
  const AddExpenseScreen({Key? key}) : super(key: key);

  @override
  State<AddExpenseScreen> createState() => _AddExpenseScreenState();
}

class _AddExpenseScreenState extends State<AddExpenseScreen> {
  DateTime dateTime = DateTime.now();
  TextEditingController titleController = TextEditingController();
  TextEditingController descController = TextEditingController();
  TextEditingController amountController = TextEditingController();
  Map<String, dynamic> result = {};
  bool isLoading = false;

//Pick Date
  pickDate() {
    showDatePicker(
      context: context,
      initialDate: dateTime,
      firstDate: DateTime(DateTime.now().year - 100),
      lastDate: DateTime(DateTime.now().year + 10),
    ).then((value) {
      setState(() {
        dateTime = value!;
      });
    });
  }

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
                    RichText(
                      text: TextSpan(
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Enriching  ',
                            style: kStyleTextW700CW.copyWith(fontSize: 20),
                          ),
                          TextSpan(
                            text: 'Agriculture ',
                            style: kStyleTextW500CG.copyWith(fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 10),
                    Text(
                      'Select Crop :',
                      style: kStyleTextW500CGR.copyWith(color: kColorGrey.shade600, fontSize: 18),
                    ),
                    TextButton(
                      onPressed: () async {
                        result = await Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const SelectCropScreen()),
                        );
                      },
                      child: Text(
                        'select',
                        style: kStyleTextW700CP.copyWith(fontSize: 16),
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
                      controller: descController,
                      maxLines: 3,
                      decoration: InputDecoration(
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
                    TextFormField(
                      controller: amountController,
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        labelText: 'Amount',
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
                    Text(
                      'Select Date :',
                      style: kStyleTextW500CGR.copyWith(color: kColorGrey.shade600, fontSize: 18),
                    ),
                    TextButton(
                      onPressed: () {
                        pickDate();
                      },
                      child: Text(
                        dateTime.toString().split(' ')[0].toString(),
                        style: kStyleTextW700CP.copyWith(fontSize: 16),
                      ),
                    ),
                    const SizedBox(height: 15),
                    isLoading
                        ? const Center(child: CircularProgressIndicator())
                        : ElevatedButton(
                            onPressed: () async {
                              setState(() {
                                isLoading = true;
                              });
                              final getDoc = FirebaseFirestore.instance.collection('khata_book').doc();
                              Map<String, dynamic> cropAdd = {
                                'cropName': result['name'],
                                'cropImg': result['imgUrl'],
                                'title': titleController.text,
                                'description': descController.text,
                                'amount': int.parse(amountController.text),
                                'date': dateTime
                              };
                              await getDoc.set(cropAdd);
                              if (mounted) {
                                Navigator.pop(context);
                              }
                              setState(() {
                                isLoading = false;
                              });
                            },
                            child: Text(
                              'Submit',
                              style: kStyleTextW500CW.copyWith(fontSize: 20),
                            ),
                          )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
