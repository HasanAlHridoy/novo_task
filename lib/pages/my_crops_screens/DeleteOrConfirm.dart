import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:novo/themes.dart';

class DeleteOrConfirm extends StatefulWidget {
  final String docId;

  const DeleteOrConfirm({Key? key, required this.docId}) : super(key: key);

  @override
  State<DeleteOrConfirm> createState() => _DeleteOrConfirmState();
}

class _DeleteOrConfirmState extends State<DeleteOrConfirm> {
  void deleteDocument(id) {
    FirebaseFirestore.instance.collection("add_crops").doc(id).delete();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      insetPadding: const EdgeInsets.all(20),
      shape: const OutlineInputBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      content: SizedBox(
        height: MediaQuery.of(context).size.height / 8,
        child: Column(
          children: [
            Text(
              'You really want to delete this?',
              style: kStyleTextW500CGR.copyWith(fontSize: 18),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: Card(
                    color: Colors.red,
                    child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(Icons.close, color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                Expanded(
                  child: Card(
                    color: Colors.green,
                    child: IconButton(
                      onPressed: () {
                        deleteDocument(widget.docId);
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.check,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
