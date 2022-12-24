import 'package:ddd_training/injection.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

import 'Presentation/signIn/widgets/app_widget.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp()
  .then((value) => print("connected " + value.options.asMap.toString()))
  .catchError((e) => print(e.toString()));
  configureInjection(Environment.prod);
  runApp( AppWidget());
}
