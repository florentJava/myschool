import 'package:flutter/material.dart';
import 'package:my_school/config/theme.dart';
import 'package:my_school/screens/home_screen.dart';
import 'package:my_school/screens/splash_screen.dart';
import 'package:provider/provider.dart'; 
import 'package:my_school/notifier/app_notifier.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider( 

          create: (context) => AppState(),


          child: MaterialApp(
              title: 'Mon École',
              debugShowCheckedModeBanner: false,
              theme: appTheme,
              home: const SplashScreen(nextScreen: HomeScreen()),
            )
    );
  }
}
