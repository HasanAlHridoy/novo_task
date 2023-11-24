import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:novo/database/hive_boxes.dart';
import 'package:novo/pages/khata_book_screen/add_expense_screen.dart';

import '../../controllers/common_functions.dart';
import '../../themes.dart';

class TotalExpenseScreen extends StatefulWidget {
  const TotalExpenseScreen({Key? key}) : super(key: key);

  @override
  State<TotalExpenseScreen> createState() => _TotalExpenseScreenState();
}

class _TotalExpenseScreenState extends State<TotalExpenseScreen> {
  num totalAmount = 0;

  num calculateTotalAmount(List data) {
    double total = 0.0;
    for (int i = 0; i < data.length; i++) {
      total += data[i]['amount'];
    }

    return total;
  }

  getData() {
    final expense = Boxes.totalExpense;
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: WillPopScope(
          onWillPop: () async {
            setState(() {
              totalAmount;
            });
            Navigator.pop(context, totalAmount);

            return true;
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Column(
              children: [
                const SizedBox(height: 20),
                Expanded(
                  flex: 2,
                  child: Container(
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
                          '\$ $totalAmount',
                          style: kStyleTextW700CP.copyWith(fontSize: 24, color: Colors.black87),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                const Divider(height: 0),
                Expanded(
                  flex: 9,
                  child: StreamBuilder(
                      stream: CommonFunctions().readData('khata_book'),
                      builder: (context, snapshot) {
                        if (snapshot.hasData) {
                          final data = snapshot.data;
                          final expense = Boxes.totalExpense;
                          expense.put('data', calculateTotalAmount(data!));
                          totalAmount = expense.get('data');
                          print(totalAmount);
                          return ListView(
                            children: data
                                .map(
                                  (e) => Column(
                                    children: [
                                      ListTile(
                                        leading: CircleAvatar(
                                          maxRadius: 30,
                                          backgroundImage: NetworkImage(
                                            e['cropImg'],
                                          ),
                                        ),
                                        title: Text(
                                          e['title'],
                                          overflow: TextOverflow.ellipsis,
                                          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                                        ),
                                        subtitle: Text(e['cropName']),
                                        trailing: Text(
                                          '\$ ${e['amount'].toString()}',
                                          style: kStyleTextW500CG.copyWith(fontSize: 20),
                                        ),
                                      ),
                                      const Divider(height: 0),
                                    ],
                                  ),
                                )
                                .toList(),
                          );
                        } else {
                          return const Center(child: CircularProgressIndicator());
                        }
                      }),
                )
              ],
            ),
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
//ListTile(
//                 leading: const Icon(Icons.ac_unit_outlined),
//                 title: const Text(
//                   'No : 54sQ555QW5E5555',
//                   overflow: TextOverflow.ellipsis,
//                   style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
//                 ),
//                 subtitle: Text('Rice'),
//                 trailing: Text(
//                   '\$ 454545',
//                   style: kStyleTextW500CG.copyWith(fontSize: 20),
//                 ),
//               ),
