import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(

      padding:
          EdgeInsets.symmetric(horizontal: context.width * 0.2, vertical: 16),
      child: Column(
        children: [
          SizedBox(height: 20),
          Text('Copyright © FlixStar - 2024'),
          // SizedBox(height: 30),
        ],
      ),
    );
  }
}
