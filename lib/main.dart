import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mat3m/Features/FirstScreen/view.dart';
import 'package:mat3m/Features/RegisterScreen/view.dart';
import 'package:mat3m/core/Storage/shared_pref.dart';
import 'Features/LoginScreen/view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Shared.intial();
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
        statusBarColor: Color(0xff1E4E50),
        statusBarIconBrightness: Brightness.light),
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: TextTheme(
            bodyText1: TextStyle(
                fontFamily: "Better Faster", fontSize: 26, color: Colors.white),
            bodyText2: TextStyle(
              fontFamily: "Oswald",
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
            headline1: TextStyle(
              fontFamily: "Oswald",
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
            caption: TextStyle(fontSize: 16),
            headline2: TextStyle(
              fontFamily: "Oswald",
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 28,
            ),
            subtitle1: TextStyle(color: Colors.white, fontSize: 14),
            subtitle2: TextStyle(color: Colors.white, fontSize: 18)),
      ),
      debugShowCheckedModeBanner: false,
      home:RegisterScreen(),
    );
  }
}
