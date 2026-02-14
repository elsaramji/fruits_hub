import 'package:flutter/material.dart' show WidgetsFlutterBinding, runApp;
import 'package:fruits_hub/core/config/initial_fun.dart' show initial;
import 'package:fruits_hub/core/config/app_main.dart' show AppMain;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initial();
  runApp(AppMain());
}
