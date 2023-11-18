import 'package:cloud_firestore/cloud_firestore.dart';

class CommonFunctions {
  //Read Data From Firebase
  Stream<List<Map>> readData(String collectionName) {
    return FirebaseFirestore.instance.collection(collectionName).snapshots().map((snapshot) => snapshot.docs.map((e) => e.data()).toList());
  }
//Delete Data From Firebase
}
