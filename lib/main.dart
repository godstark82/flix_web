
import 'package:flix_web/features/home/presentation/pages/home.dart';
import 'package:flutter/material.dart';

void main() async{
  runApp(const MainApp());
}

ScrollController scrollController = ScrollController();

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark(useMaterial3: true),
        home: Home());
  }
}
