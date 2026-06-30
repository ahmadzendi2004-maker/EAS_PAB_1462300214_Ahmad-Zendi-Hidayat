import 'package:flutter/material.dart';
import 'pages/splash_page.dart';

void main() {
  runApp(const TokoOnlineUNTAGApp());
}

class TokoOnlineUNTAGApp extends StatelessWidget {
  const TokoOnlineUNTAGApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Toko Online UNTAG',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorSchemeSeed: Colors.red,
        useMaterial3: true,
        scaffoldBackgroundColor: const Color(0xfff7f7f7),
      ),
      home: const SplashPage(),
    );
  }
}