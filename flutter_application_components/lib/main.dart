import 'package:flutter/material.dart';
import 'package:flutter_application_components/router/app_routers.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: AppRoutes.initialRoute,
      routes: AppRoutes.getAppRoutes(),
      onGenerateRoute: AppRoutes.onGenerateRoute,

      //temas
      theme: ThemeData.light().copyWith(
        appBarTheme: const AppBarTheme(backgroundColor: Colors.indigo),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.indigo, elevation: 10),
        ),
      ),
    );
  }
}
