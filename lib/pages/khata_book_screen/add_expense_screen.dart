import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../themes.dart';

class AddExpenseScreen extends StatefulWidget {
  const AddExpenseScreen({Key? key}) : super(key: key);

  @override
  State<AddExpenseScreen> createState() => _AddExpenseScreenState();
}

class _AddExpenseScreenState extends State<AddExpenseScreen> {
  DateTime dt = DateTime.now();

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
                      onPressed: () {},
                      child: Text(
                        'select',
                        style: kStyleTextW700CP.copyWith(fontSize: 16),
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
                    Text(
                      'Select Date :',
                      style: kStyleTextW500CGR.copyWith(color: kColorGrey.shade600, fontSize: 18),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        dt.toString().split(' ')[0].toString(),
                        style: kStyleTextW700CP.copyWith(fontSize: 16),
                      ),
                    ),
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
