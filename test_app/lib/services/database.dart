import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseService {
  final String uid;
  DatabaseService({this.uid});

  //collection ref
  final CollectionReference testApp = Firestore.instance.collection('test');
  Future updateUserData(String name, int appNum, String description) async {
    return await testApp.document(uid).setData({
      'name': name,
      'Number of home appliances': appNum,
      'Description': description,
    });
  }
}
