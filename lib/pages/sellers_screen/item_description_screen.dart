import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:novo/pages/sellers_screen/send_query_popup.dart';
import 'package:novo/themes.dart';

class ItemDescriptionScreen extends StatefulWidget {
  final String title;
  final String price;
  final String imgUrl;

  const ItemDescriptionScreen({Key? key, required this.title, required this.price, required this.imgUrl}) : super(key: key);

  @override
  State<ItemDescriptionScreen> createState() => _ItemDescriptionScreenState();
}

class _ItemDescriptionScreenState extends State<ItemDescriptionScreen> {
  bool isLoading = false;
  String description = 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              widget.imgUrl,
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
                  Text(
                    widget.title,
                    style: TextStyle(fontSize: 19, fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    widget.price,
                    style: kStyleTextW500CGR.copyWith(fontSize: 18),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Description',
                    style: TextStyle(fontSize: 19, fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    description,
                    style: kStyleTextW500CGR.copyWith(fontSize: 18),
                  ),
                  const SizedBox(height: 20),
                  isLoading
                      ? const Center(child: CircularProgressIndicator())
                      : ElevatedButton(
                          onPressed: () async {
                            setState(() {
                              isLoading = true;
                            });
                            final getDoc = FirebaseFirestore.instance.collection('sellers_query').doc();
                            Map<String, dynamic> crops = {
                              "id": getDoc.id,
                              "title": widget.title,
                              "price": widget.price,
                              "description": description,
                              "imgUrl": widget.imgUrl,
                            };
                            await getDoc.set(crops);
                            setState(() {
                              isLoading = false;
                            });
                            if (mounted) {
                              showDialog(context: context, builder: (context) => const SendQueryPopUp());
                            }
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
