import 'package:flutter/material.dart';
import 'package:novo/pages/khata_book_screen/total_expense_screen.dart';

import '../../themes.dart';

class KhataBookScreen extends StatefulWidget {
  const KhataBookScreen({Key? key}) : super(key: key);

  @override
  State<KhataBookScreen> createState() => _KhataBookScreenState();
}

class _KhataBookScreenState extends State<KhataBookScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Column(
            children: [
              const SizedBox(height: 20),
              Container(
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
                    const Icon(
                      Icons.book,
                      size: 100,
                      color: Colors.blueGrey,
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    Text(
                      'Khata Book',
                      style: kStyleTextW500CGR.copyWith(fontSize: 20, color: Colors.black87),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          '2023',
                          style: kStyleTextW700CP.copyWith(fontSize: 20),
                        ))
                  ],
                ),
              ),
              const SizedBox(height: 20),
              InkWell(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const TotalExpenseScreen()),
                  );
                },
                child: Container(
                  height: MediaQuery.of(context).size.height / 6,
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
                      Text(
                        'Total Expense :',
                        style: kStyleTextW500CGR.copyWith(fontSize: 24, color: Colors.black87),
                      ),
                      Text(
                        'Click Here To Add Expense',
                        style: kStyleTextW500CGR.copyWith(fontSize: 16),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Text(
                        '\$ 4442023',
                        style: kStyleTextW700CP.copyWith(fontSize: 24, color: Colors.black87),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              InkWell(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                child: Container(
                  height: MediaQuery.of(context).size.height / 6,
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
                      Text(
                        'Total Income :',
                        style: kStyleTextW500CGR.copyWith(fontSize: 24, color: Colors.black87),
                      ),
                      Text(
                        'Click Here To Add Income',
                        style: kStyleTextW500CGR.copyWith(fontSize: 16),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Text(
                        '\$ 4442023',
                        style: kStyleTextW700CP.copyWith(fontSize: 24, color: Colors.black87),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
