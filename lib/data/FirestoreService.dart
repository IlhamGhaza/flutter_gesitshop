import 'package:cloud_firestore/cloud_firestore.dart';
import '../data/fake_data.dart';

class FirestoreService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<void> uploadFakeData() async {
    // Upload categories
    for (var category in fakeCategories) {
      await _firestore
          .collection('categories')
          .doc(category.categoryId)
          .set(category.toMap());
    }

    // Upload products
    for (var product in fakeProducts) {
      await _firestore
          .collection('products')
          .doc(product.productId)
          .set(product.toMap());
    }
  }
}
