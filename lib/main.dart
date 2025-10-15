import 'package:flutter/material.dart';
import 'package:new_project/screens/dash_board.dart';
import 'package:new_project/screens/home/home_screen.dart';
import 'package:new_project/core/theme/app_themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ThemeMode _themeMode = ThemeMode.system;
  void toggleTheme() {
    setState(() {
      _themeMode = _themeMode == ThemeMode.dark
          ? ThemeMode.light
          : ThemeMode.dark;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppThemes.light,
      darkTheme: AppThemes.dark,
      themeMode: _themeMode,
      //==================  themes  ===================
      debugShowCheckedModeBanner: false,
      //
      //
      //================== ▼ First Page ▼ ===================
      initialRoute: '/dashBoard',
      //============== ▼ here all the pages path ▼ ==============
      routes: {
        //'/': (context) => SplashScreen(),
        //'/login': (context) => LoginScreen(),
        //'/signup': (context) => SignUpScreen(),
        '/dashBoard': (context) => DashBoard(onToggleTheme: toggleTheme),
        '/home': (context) => HomeScreen(),
      },
    );
  }
}
//▼▲▼▲▼▲▼▲▼▲▼▲▼▲▼▲▼▲▼▲▼▲▼▲▼ TRAVLING CODES GUID ▲▼▲▼▲▼▲▼▲▼▲▼▲▼▲▼▲▼▲▼▲▼▲▼▲▼
//
// for replace  () => Navigator.pushReplacementNamed(context, '/signup');
// for moving   () => Navigator.pushNamed(context, '/product'),
// for back     () => Navigator.pop(context),
//=======================================================================
// fot moving with data 
//              Navigator.pushNamed( context, '/product', arguments: {
//                  'id': 101,
//                  'name': 'Laptop',
//                  'price': 3500,
//                },
//              );
