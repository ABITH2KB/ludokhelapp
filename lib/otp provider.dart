import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class OtpProvider with ChangeNotifier {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  TextEditingController otpController = TextEditingController();

  Future<void> verifyOtp(BuildContext context, String verificationId) async {
    try {
      // Create credential with OTP
      PhoneAuthCredential credential = PhoneAuthProvider.credential(
        verificationId: verificationId,
        smsCode:otpController.text.trim(),
      );

      // Sign in with credential
      await _auth.signInWithCredential(credential).then((value) {
        Navigator.pushReplacementNamed(context, '/details'); // Navigate to the details screen
      });
    } catch (ex) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Failed to verify OTP. Please try again.')),
      );
    }
  }

  @override
  void dispose() {
    otpController.dispose();
    super.dispose();
  }
}
