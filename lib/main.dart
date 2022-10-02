
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:packdemo/pages/home_page.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(
      EasyLocalization(
          supportedLocales: [Locale('en', 'US'), Locale('ru', 'RU'), Locale('uz', 'UZ'), Locale('fr', 'FR')],
          path: 'assets/translations', // <-- change the path of the translation files
          fallbackLocale: Locale('en', 'US'),
      child: const MyApp()
  )
  );
}

class MyApp extends StatelessWidget {

  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
      ),
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
    );
  }
}

