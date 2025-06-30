import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'ahadeth_model/hadeth_details.dart';
import 'home/home.dart';
import 'home/my_theme.dart';
import 'providers/my_provider.dart';
import 'sura_details/sura_details.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: Locale(provider.selectedLanguage),
      theme: MyThemeData.lightMode,
      darkTheme: MyThemeData.darkMode,
      themeMode: provider.selectedMode,
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (context) => const HomeScreen(),
        SuraDetails.routeName: (context) => const SuraDetails(),
        HadethDetails.routeName: (context) => const HadethDetails(),
      },
    );
  }
}
