import 'package:flutter/material.dart';
import 'package:provider/provider.dart'; // Import Provider
import 'otp provider.dart';

class Otp extends StatelessWidget {
  final String verificationid;
  const Otp({super.key, required this.verificationid});
  @override
  Widget build(BuildContext context) {
    final otpProvider = Provider.of<OtpProvider>(context); // Access the provider
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.red,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: screenWidth * 0.08, top: screenHeight * 0.01),
              child: Image.asset(
                'asset/image/3.png',
                width: screenWidth * 0.6,
                height: screenHeight * 0.2,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: screenHeight * 0.01),
              child: Stack(
                children: [
                  Positioned(
                    top: screenHeight * 0.02,
                    left: screenWidth * 0.35,
                    child: Image.asset(
                      'asset/image/2.png',
                      width: screenWidth * 0.4,
                      height: screenHeight * 0.2,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: screenWidth * 0.12,
                      top: screenHeight * 0.1,
                      right: screenWidth * 0.08,
                    ),
                    child: Container(
                      width: screenWidth * 0.9,
                      height: screenHeight * 0.6,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: const Color(0xFFFF8A8A), width: 4),
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: screenHeight * 0.02),
                          const Text(
                            'OTP VERIFICATION',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              fontFamily: 'chyler',
                            ),
                          ),
                          SizedBox(height: screenHeight * 0.015),
                          Image.asset(
                            'asset/image/lock.png',
                            width: screenWidth * 0.4,
                            height: screenHeight * 0.2,
                          ),
                          SizedBox(height: screenHeight * 0.01),
                          const Text(
                            'We will send OTP to the registered',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Text(
                            'mobile number',
                            style: TextStyle(
                              fontSize: 17,
                            ),
                          ),
                          SizedBox(height: screenHeight * 0.01),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
                            child: Container(
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.5),
                                    spreadRadius: 1,
                                    blurRadius: 5,
                                    offset: const Offset(0, 2),
                                  ),
                                ],
                              ),
                              height: screenHeight * 0.06,
                              width: screenWidth * 0.7,
                              child: TextField(
                                controller: otpProvider.otpController,
                                style: const TextStyle(
                                  color: Colors.white,
                                ),
                                decoration: const InputDecoration(
                                  fillColor: Colors.black,
                                  filled: true,
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.red,
                                      width: 2.0,
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.red,
                                      width: 2.0,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: screenHeight * 0.04),
                            child: SizedBox(
                              height: screenHeight * 0.1,
                              width: screenWidth * 0.5,
                              child: ElevatedButton(
                                onPressed: () {
                                  otpProvider.verifyOtp(context, verificationid); // Call OTP verification via provider
                                },
                                style: ElevatedButton.styleFrom(
                                  padding: EdgeInsets.zero,
                                  primary: Colors.transparent,
                                  backgroundColor: Colors.transparent,
                                  shadowColor: Colors.transparent,
                                ),
                                child: Image.asset(
                                  'asset/image/4.png',
                                  width: screenWidth * 0.5,
                                  height: screenHeight * 0.15,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
