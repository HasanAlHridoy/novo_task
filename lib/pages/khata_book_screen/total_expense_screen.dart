import 'package:flutter/material.dart';
import 'package:novo/pages/khata_book_screen/add_expense_screen.dart';

import '../../themes.dart';

class TotalExpenseScreen extends StatefulWidget {
  const TotalExpenseScreen({Key? key}) : super(key: key);

  @override
  State<TotalExpenseScreen> createState() => _TotalExpenseScreenState();
}

class _TotalExpenseScreenState extends State<TotalExpenseScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Column(
            children: [
              const SizedBox(height: 20),
              Container(
                height: MediaQuery.of(context).size.height / 7,
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const SizedBox.shrink(),
                        const SizedBox.shrink(),
                        Text(
                          'Total Income :',
                          style: kStyleTextW500CGR.copyWith(fontSize: 24, color: Colors.black87),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.filter_alt_outlined,
                            size: 40,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      '\$ 4442023',
                      style: kStyleTextW700CP.copyWith(fontSize: 24, color: Colors.black87),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 10),
              const Divider(height: 0),
              ListTile(
                leading: const Icon(Icons.ac_unit_outlined),
                title: const Text(
                  'No : 54sQ555QW5E5555',
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                ),
                subtitle: Text('Rice'),
                trailing: Text(
                  '\$ 454545',
                  style: kStyleTextW500CG.copyWith(fontSize: 20),
                ),
              ),
              const Divider(height: 0),
              ListTile(
                leading: const Icon(Icons.ac_unit_outlined),
                title: const Text(
                  'No : 54sQ555QW5E5555',
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                ),
                subtitle: Text('Rice'),
                trailing: Text(
                  '\$ 454545',
                  style: kStyleTextW500CG.copyWith(fontSize: 20),
                ),
              )
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const AddExpenseScreen()),
            );
          },
          backgroundColor: kColorPrimary,
          child: const Icon(
            Icons.add,
            color: kColorWhite,
          ),
        ),
      ),
    );
  }
}
