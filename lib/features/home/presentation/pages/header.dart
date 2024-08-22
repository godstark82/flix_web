import 'package:flix_web/core/utils/utils.dart';
import 'package:flix_web/features/home/presentation/widgets/header_dl_button.dart';
import 'package:flix_web/main.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.5,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text('FlixStar ',
                      style: TextStyle(
                          color: Colors.amber, fontWeight: FontWeight.w600),
                      textScaler: TextScaler.linear(ScaleSize.textScaleFactor(
                          context,
                          maxTextScaleFactor: 3))),
                  Text('Watch Movies',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w600),
                      textScaler: TextScaler.linear(ScaleSize.textScaleFactor(
                          context,
                          maxTextScaleFactor: 3)))
                ],
              ),
              Text('Online',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w600),
                  textScaler: TextScaler.linear(ScaleSize.textScaleFactor(
                      context,
                      maxTextScaleFactor: 3))),
              SizedBox(height: 20),
              SizedBox(
                width: context.width > 750
                    ? context.width * 0.25
                    : context.width * 0.8,
                child: Text(
                  'FlixStar - Movies App / Tv Series / Live Channel This app is that allows you to watch and download movies, tv series and tv channels. Watch Online Movies, Web Series exclusively on FlixStar App.',
                  maxLines: 4,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ),
              SizedBox(height: 40),
              HeaderDownloadButton(
                  icon: Icon(
                    Icons.download,
                    color: Colors.black,
                  ),
                  onTap: () {
                    scrollController.animateTo(
                        scrollController.position.maxScrollExtent,
                        duration: const Duration(milliseconds: 400),
                        curve: Curves.easeIn);
                  },
                  text: 'Download FlixStar')
            ],
          ),
          SizedBox(),
        ],
      ),
    );
  }
}


/*
! https://github.com/godstark82/flixstar/releases/download/1.0.2%2B101/app-arm64-v8a-release.apk
! https://github.com/godstark82/flixstar/releases/download/1.0.2%2B94/app-arm64-v8a-release.apk


*/