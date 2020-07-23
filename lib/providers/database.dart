import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseService {

  final String uid;
  DatabaseService({ this.uid });

  // collection reference
  final CollectionReference utmgroceryclc = Firestore.instance.collection('brews');

  Future<void> updateUserData(String name, String email, String address, String phone, String username, String password) async {
    return await utmgroceryclc.document(uid).setData({
      'name': name,
      'email': email,
      'address': address,
      'phone': phone,
      'username': username,
      'password': password,
    });
  }

}