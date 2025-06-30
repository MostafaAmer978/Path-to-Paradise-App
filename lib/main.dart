import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:path_to_paradise/providers/my_provider.dart';
import 'package:provider/provider.dart';
import 'my_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  MyProvider sharedProvider = MyProvider();
  sharedProvider.setItems();
  await EasyLocalization.ensureInitialized();
  runApp(
    ChangeNotifierProvider<MyProvider>(
      create: (context) => sharedProvider,
      child: EasyLocalization(
        supportedLocales: const [Locale('en'), Locale('ar')],
        path: 'assets/translations',
        // <-- change the path of the translation files:
        fallbackLocale: const Locale('en'),
        child: const MyApp(),
      ),
    ),
  );
}
