import 'package:flutter/material.dart';

import '../../themes.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
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
                    const ProfileCustomFormField(label: 'Full Name'),
                    const SizedBox(height: 10),
                    const ProfileCustomFormField(label: 'Select State'),
                    const SizedBox(height: 10),
                    const ProfileCustomFormField(label: 'City'),
                    const SizedBox(height: 10),
                    const ProfileCustomFormField(label: 'Postcode'),
                    const SizedBox(height: 10),
                    const ProfileCustomFormField(label: 'Author Card No'),
                    const SizedBox(height: 10),
                    const ProfileCustomFormField(label: 'Pass Card No'),
                    const SizedBox(height: 15),
                    const Text(
                      'Bank Details',
                      style: TextStyle(fontSize: 19, fontWeight: FontWeight.w700),
                    ),
                    const SizedBox(height: 10),
                    const ProfileCustomFormField(label: 'Bank Name'),
                    const SizedBox(height: 10),
                    const ProfileCustomFormField(label: 'Account Number'),
                    const SizedBox(height: 10),
                    const ProfileCustomFormField(label: 'Account Holder Name'),
                    const SizedBox(height: 10),
                    const ProfileCustomFormField(label: 'Code'),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        Checkbox(
                          value: true,
                          onChanged: (v) {},
                          activeColor: kColorPrimary,
                        ),
                        const Text(
                          'Organic Form',
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                    const SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: () {},
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

class ProfileCustomFormField extends StatelessWidget {
  final String label;

  const ProfileCustomFormField({
    required this.label,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: label,
        contentPadding: const EdgeInsets.symmetric(vertical: 18.0, horizontal: 10),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.0),
          borderSide: const BorderSide(
            color: Colors.black87, // Border color
            width: 1.0, // Border width
          ),
        ),
      ),
    );
  }
}
