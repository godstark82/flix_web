import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:svg_flutter/svg.dart';

class FeatureWidget extends StatelessWidget {
  final String iconPath;
  final String title;
  final String desc;
  const FeatureWidget(
      {super.key,
      required this.desc,
      required this.iconPath,
      required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SvgPicture.asset(iconPath, height: 50, width: 50),
          SizedBox(height: 10),
          Text(title,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
          SizedBox(height: 10),
          SizedBox(
              width: context.width > 750
                  ? context.width * 0.15
                  : context.width * 0.8,
              child: Text(
                desc,
                maxLines: 4,
                overflow: TextOverflow.ellipsis,
              ))
        ],
      ),
    );
  }
}
