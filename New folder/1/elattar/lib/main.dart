import 'package:firebase_core/firebase_core.dart';
import 'package:elattar/firebase_options.dart';
import 'package:elattar/routes.dart';
import 'package:elattar/screens/login.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primarySwatch: Colors.red
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: Login.id,
      routes: routes,
    );
  }

}
