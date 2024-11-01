import 'package:flutter/material.dart';
import 'package:flutter_application_components/router/app_routers.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final menuOptions = AppRoutes.menuOptions;

    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Componentes en Flutter')),
      ),
      body: ListView.separated(
          itemBuilder: (context, i) => ListTile(
                leading: Icon(menuOptions[i].icon, color: Colors.deepPurple),
                title: Text(menuOptions[i].name),
                onTap: () {
                  Navigator.pushNamed(context, menuOptions[i].route);
                },
              ),
          separatorBuilder: (_, __) => const Divider(),
          itemCount: menuOptions.length),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_sharp), label: 'Perfil')
        ],
      ),
    );
  }
}
