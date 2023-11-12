import 'package:flutter/material.dart';
import 'package:novo/pages/sellers_screen/send_query_popup.dart';
import 'package:novo/themes.dart';

class ItemDescriptionScreen extends StatefulWidget {
  const ItemDescriptionScreen({Key? key}) : super(key: key);

  @override
  State<ItemDescriptionScreen> createState() => _ItemDescriptionScreenState();
}

class _ItemDescriptionScreenState extends State<ItemDescriptionScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              'https://5.imimg.com/data5/SELLER/Default/2021/1/AD/RL/EK/57431554/500-watt-hydromax-soldering-machine-500x500.jpg',
              height: MediaQuery.of(context).size.height / 4,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 15),
                  const Text(
                    'Hydromax Machine',
                    style: TextStyle(fontSize: 19, fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    '\$ 45000000',
                    style: kStyleTextW500CGR.copyWith(fontSize: 18),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Description',
                    style: TextStyle(fontSize: 19, fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry',
                    style: kStyleTextW500CGR.copyWith(fontSize: 18),
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      showDialog(context: context, builder: (context) => const SendQueryPopUp());
                    },
                    child: const Text(
                      'Send Query',
                      style: TextStyle(fontSize: 18),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
