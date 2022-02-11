import 'package:base_project/data/services/local/locator.dart';
import 'package:flutter/material.dart';

Future<void> init() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupLocator();
}
