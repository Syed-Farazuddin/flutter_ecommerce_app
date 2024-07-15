import 'package:ecommerce/pages/intro_page.dart';
import 'package:ecommerce/pages/login.dart';
import 'package:ecommerce/pages/register.dart';
import 'package:ecommerce/providers/state_provider.dart';
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<Stateprovider>(
          create: (context) => Stateprovider(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/register': (context) => const RegisterPage(),
          '/login': (context) => const LoginPage(),
        },
        home: const LoginPage(),
      ),
    );
  }
}
