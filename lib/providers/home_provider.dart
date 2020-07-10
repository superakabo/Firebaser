import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';

class HomeProvider with ChangeNotifier {
  Future<void> loadData() async {
    final querySnapshot = await Firestore.instance.collection('').getDocuments();
  }
}
