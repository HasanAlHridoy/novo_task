import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:image_picker/image_picker.dart';

class CommonFunctions {
  //Read Data From Firebase
  Stream<List<Map>> readData(String collectionName) {
    return FirebaseFirestore.instance.collection(collectionName).snapshots().map((snapshot) => snapshot.docs.map((e) => e.data()).toList());
  }

// Image Picker
  pickImage(ImageSource imageSource) async {
    ImagePicker img = ImagePicker();
    XFile? file = await img.pickImage(source: imageSource);
    if (file != null) {
      return file.readAsBytes();
    } else {
      print('Image Not Selected');
    }
  }
}
