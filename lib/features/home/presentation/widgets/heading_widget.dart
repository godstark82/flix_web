import 'package:flutter/material.dart';

class HeadingWidget extends StatelessWidget {
  final String text;

  const HeadingWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 30,
          width: 5,
          decoration: BoxDecoration(
              color: Colors.amber, borderRadius: BorderRadius.circular(20)),
        ),
        SizedBox(width: 10),
        Text(text,
            style: Theme.of(context)
                .textTheme
                .titleLarge
               )
      ],
    );
  }
}
