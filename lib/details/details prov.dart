import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class DetailsProvider with ChangeNotifier {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController referralCodeController = TextEditingController();

  bool _isLoading = false;

  bool get isLoading => _isLoading;

  Future<void> storeData() async {
    try {
      _isLoading = true;
      notifyListeners(); // Notify loading state change

      String name = nameController.text.trim();
      String email = emailController.text.trim();
      String referralCode = referralCodeController.text.trim();

      await FirebaseFirestore.instance
          .collection('details')
          .doc('sBV7jEWoXP8KrM5yzh72')
          .set({
        'name': name,
        'emailid': email,
        'referralCode': referralCode,
      }, SetOptions(merge: true));

      _isLoading = false;
      notifyListeners(); // Notify that loading is complete
    } catch (e) {
      print('Error storing data: ${e.toString()}');
      _isLoading = false;
      notifyListeners(); // In case of an error, stop the loading
    }
  }

  void disposeControllers() {
    nameController.dispose();
    emailController.dispose();
    referralCodeController.dispose();
  }
}
