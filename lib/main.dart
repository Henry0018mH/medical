import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'screens/getstarted.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(); // Initialize Firebase
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Firebase Authentication',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const GetStartedScreen(),
    );
  }
}
