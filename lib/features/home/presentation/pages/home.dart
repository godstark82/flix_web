import 'package:flix_web/features/home/presentation/pages/about.dart';
import 'package:flix_web/features/home/presentation/pages/download.dart';
import 'package:flix_web/features/home/presentation/pages/features.dart';
import 'package:flix_web/features/home/presentation/pages/header.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: const [
          Header(),
          AboutSection(),
          Features(),
          DownloadSection(),
        ],
      ),
    );
  }
}
