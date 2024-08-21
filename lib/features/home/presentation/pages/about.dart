import 'dart:ui';

import 'package:flix_web/core/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

const String img =
    'https://images.unsplash.com/photo-1573901715464-3abada6ceed0?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.5,
      width: context.width,
      decoration: BoxDecoration(
        image: DecorationImage(image: NetworkImage(img), fit: BoxFit.fitWidth),
      ),
      child: ClipRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
          child: Container(
            padding: EdgeInsets.all(16),
            height: context.height * 0.6  ,
            width: context.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset('assets/images/flixstar.png',
                        height: 100, width: 100),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Text(
                          'What is ',
                          textScaler: TextScaler.linear(
                              ScaleSize.textScaleFactor(context,
                                  maxTextScaleFactor: 2.5)),
                        ),
                        Text(
                          'FlixStar ',
                          style: TextStyle(
                              color: Colors.amber, fontWeight: FontWeight.w600),
                          textScaler: TextScaler.linear(
                              ScaleSize.textScaleFactor(context,
                                  maxTextScaleFactor: 2.5)),
                        ),
                      ],
                    ),
                    SizedBox(height: 25),
                    SizedBox(
                      width: context.width > 750
                          ? context.width * 0.3
                          : context.width * 0.8,
                      child: Text(
                        'Are you looking for a convenient and reliable way to watch Hindi movies for free? If so, you may have heard of FlixStar. FlixStar is a popular app for streaming Hindi movies and TV shows, with a focus on providing users with high-quality content that can be enjoyed from the comfort of their own home.\nDownload the app, search for the movie or show of your choice, hit the play button, and you are all set.\nFlixStar provides a limitless source of entertainment, including content from major platforms such as Youtube, Twitch, and even Live TV Channels. Should you not find something to your taste, make a request, we are always eager to scour the Internet for your satisfaction.',
                        maxLines: 10,
                        overflow: TextOverflow.ellipsis,
                      ),
                    )
                  ],
                ),
                Image.asset('assets/images/ss.png')
              ],
            ),
          ),
        ),
      ),
    );
  }
}

/**
 * Are you looking for a convenient and reliable way to watch Hindi movies for free? If so, you may have heard of FlixStar. FlixStar is a popular app for streaming Hindi movies and TV shows, with a focus on providing users with high-quality content that can be enjoyed from the comfort of their own home.

Download the app, search for the movie or show of your choice, hit the play button, and you are all set.

FlixStar provides a limitless source of entertainment, including content from major platforms such as Youtube, Twitch, and even Live TV Channels. Should you not find something to your taste, make a request, we are always eager to scour the Internet for your satisfaction.




 */