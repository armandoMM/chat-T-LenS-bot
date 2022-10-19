import 'package:chat_tlens_bot/Theme/app_theme.dart';
import 'package:chat_tlens_bot/screens/screens.dart';
import 'package:chat_tlens_bot/router/routes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'T-lenS',
      theme: AppTheme.ligthTheme,
      routes: AppRoutes.getAppRoutes(),
      initialRoute: AppRoutes.initialRoute,
      onGenerateRoute: AppRoutes.onGenerateRoute,
    );
  }
}
