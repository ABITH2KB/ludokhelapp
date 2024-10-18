import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:ludokhel2/otp%20provider.dart';
import 'package:ludokhel2/otp.dart';
import 'package:provider/provider.dart';
import 'details/details prov.dart';
import 'details/details.dart';
import 'login provider.dart';
import 'login.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(); // Initialize Firebase

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => LoginProvider()),
        ChangeNotifierProvider(create: (_) => OtpProvider()),
        ChangeNotifierProvider(create: (_) => DetailsProvider()),

      ],
      child: MyApp(),
    ),
  );
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) =>  Login(),
        '/otp': (context) => Otp(verificationid: ModalRoute.of(context)?.settings.arguments as String),
        '/details': (context) => const Details(),


      },
    );
  }
}
