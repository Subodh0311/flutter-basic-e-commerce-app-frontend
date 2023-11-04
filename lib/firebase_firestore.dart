import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:mainproject/models/productmodel.dart';

class FirebaseFirestoreHelper {
  static FirebaseFirestoreHelper instance = FirebaseFirestoreHelper();
  final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;

  Future<List<ProductModel>> getCategories() async {
    try {
      QuerySnapshot<Map<String, dynamic>> querySnapshot =
      await _firebaseFirestore.collection("categories").get();

      List<ProductModel> categoriesList = querySnapshot.docs
          .map((e) => ProductModel.fromJson(e.data() as Map<String, dynamic>))
          .toList();
      return categoriesList;
    } catch (e) {
      // Handle the error here or log it, as showMessage function is not defined
      print(e.toString());
      return [];
    }
  }
}
