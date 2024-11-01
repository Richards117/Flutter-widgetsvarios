import 'package:flutter/material.dart';
import 'package:flutter_application_components/models/models.dart';
import 'package:flutter_application_components/screens/screens.dart';
import 'package:flutter_application_components/screens/slider_screen.dart';

class AppRoutes {
  static const initialRoute = 'home';
  static final menuOptions = <MenuOption>[
    /* MenuOption(
      route: 'home',icon: Icons.home,name: 'Home Screnn',screen: const HomeScreen()
    ),*/
    MenuOption(
      route: 'view1',
      icon: Icons.list_rounded,
      name: 'List view1',
      screen: const ListviewScreen(),
    ),
    MenuOption(
      route: 'view2',
      icon: Icons.list_rounded,
      name: 'List view2',
      screen: const Listview2Screen(),
    ),
    MenuOption(
      route: 'alert',
      icon: Icons.add_alert,
      name: 'Alert',
      screen: const AlertScreen(),
    ),
    MenuOption(
      route: 'card',
      icon: Icons.credit_card_rounded,
      name: 'cards',
      screen: const CardScreen(),
    ),
    MenuOption(
      route: 'input',
      icon: Icons.person,
      name: 'Avatar',
      screen: const AvatarScreen(),
    ),
    MenuOption(
      route: 'avatar',
      icon: Icons.input,
      name: 'Inputs',
      screen: const InputsScreen(),
    ),
    MenuOption(
      route: 'slider',
      icon: Icons.last_page_outlined,
      name: 'SLider',
      screen: const SliderScreen(),
    ),
    MenuOption(
      route: 'ListviewBuilder',
      icon: Icons.view_list,
      name: 'ListviewBuilder',
      screen: const ListView3Screen(),
    ),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({'home': (BuildContext context) => const HomeScreen()});

    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }

    return appRoutes;
  }

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const AlertScreen(),
    );
  }
}

class KokoScreen extends StatelessWidget {
  const KokoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('KokoScreen'),
      ),
    );
  }
}
