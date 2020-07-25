import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseService {
  final String uid;
  DatabaseService({this.uid});

  // collection reference
  final CollectionReference utmgroceryclc =
      Firestore.instance.collection('utmgrocery');

  Future<void> updateUserData(
      String name, String address, String phone, int pin, String state) async {
    return await utmgroceryclc.document(uid).setData({
      'name': name,
      'address': address,
      'phone': phone,
      'pin': pin,
      'state': state,
    });
  }
}
