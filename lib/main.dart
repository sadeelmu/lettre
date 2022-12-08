import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:lettre/app.dart';
import 'package:lettre/locator.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await setupLocator();

  runApp(const MyApp());
}
