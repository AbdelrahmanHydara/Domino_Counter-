import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'modules/home/home_screen.dart';

void main()
{
  runApp(const MyApp());
}

class MyApp extends StatelessWidget
{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch:  Colors.teal,
        primaryColor: Colors.teal,
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.transparent,
          titleTextStyle: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w700,
            fontSize: 34,
          ),
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarIconBrightness: Brightness.light,
            statusBarColor: Colors.teal,
          ),
        ),
        useMaterial3: true,
      ),
      home: const PointsCounter(),
    );
  }
}


