import 'package:flutter/material.dart';
import 'package:chat_tlens_bot/models/models.dart';
import '../screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'Home';
  static final menuOptions = <MenuOption>[
    MenuOption(
      route: 'Chat',
      name: 'Chat',
      screen: ChatScreen(),
    ),
    // MenuOption(
    //     route: 'Detalle metricas',
    //     name: 'Detalle metricas',
    //     screen: const DetailMetricsScreen(),
    //     ),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    for (var option in menuOptions) {
      appRoutes.addAll({option.name: (BuildContext context) => option.screen});
    }
    return appRoutes;
  }

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const HomeScreen(),
    );
  }
}
