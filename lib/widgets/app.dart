import 'package:flutter/material.dart';
import 'package:track_me/screens/home/home_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TrackMe',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Poppins',
       appBarTheme: const AppBarTheme(titleTextStyle: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold),iconTheme: IconThemeData(color: Colors.white),),
        colorScheme: const ColorScheme.dark(
          primary: Colors.black,
          surface: Colors.white,
          onSurface: Colors.black,
        ),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}
