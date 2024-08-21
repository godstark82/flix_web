import 'package:flix_web/features/home/presentation/widgets/feature_widget.dart';
import 'package:flix_web/features/home/presentation/widgets/heading_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Features extends StatelessWidget {
  const Features({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.height * 0.5,
      width: context.width,
      margin: EdgeInsets.only(
          left: context.width * 0.1, right: context.width * 0.1),
        padding: EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HeadingWidget(text: 'Features'),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            FeatureWidget(
                desc:
                    'FlixStar is totally free, you can even stream without an account. There are no hidden fees of any kind.',
                iconPath: 'assets/icon/target.svg',
                title: 'Free without registration'),
            FeatureWidget(
                desc:
                    'Watching foreign movies and shows is never easier. Simply choose your desired language and explore new cultures.',
                iconPath: 'assets/icon/subtitle.svg',
                title: 'Multi-Subtitles'),
            FeatureWidget(
                desc:
                    'For your smoothest watching experience, we provide not only a Torrent server but also other choices well-selected from other sites/services.',
                iconPath: 'assets/icon/servers.svg',
                title: 'Multiple server options'),
          ]),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FeatureWidget(
                  desc:
                      'Keep track of movies and shows you love! You might want to rewatch or share it with people you care about later.',
                  iconPath: 'assets/icon/wishlist.svg',
                  title: 'Custom favorite list'),
              SizedBox(width: context.width * 0.15),
              SizedBox(width: context.width * 0.15)
            ],
          )
        ],
      ),
    );
  }
}
