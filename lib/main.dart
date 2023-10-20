import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'AuthPage.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor:Color.fromRGBO(3, 74, 166, 1.0)),
        useMaterial3: true,
      ),
      home:  AuthPage(),
    );
  }
}
