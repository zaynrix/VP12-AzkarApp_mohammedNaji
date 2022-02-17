import 'package:azkar_application/screens/bio_screen.dart';
import 'package:azkar_application/screens/home_screen.dart';
import 'package:azkar_application/screens/launch_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/launch_screen',
      localizationsDelegates: [
        GlobalCupertinoLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate
      ],
      supportedLocales: [Locale('ar'), Locale('en')],
      locale: Locale('ar'),
      routes: {
        '/launch_screen': (context) => LaunchScreen(),
        '/home_screen': (context) => HomeScreen(),
        '/bio_screen': (context) => BioScreen(),
      },
    );
  }
}
