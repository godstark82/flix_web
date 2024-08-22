import 'dart:math';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';


class ScaleSize {
  static double textScaleFactor(BuildContext context,
      {double maxTextScaleFactor = 2}) {
    final width = MediaQuery.of(context).size.width;
    double val = (width / 800) * maxTextScaleFactor;
    return max(1, min(val, maxTextScaleFactor));
  }
}

Future<String> getDownloadUrl() async {
  final Dio dio = Dio();
  const url =
      'https://api.github.com/repos/godstark82/flixstar/releases/latest';
  final response = await dio.get(url);
  String gitHubVersion = response.data['tag_name'];
  final List<String> cloudVersionString = gitHubVersion.split('+');
  String version = cloudVersionString.first;
  String versionCode = cloudVersionString.last;
  final String result =
      'https://github.com/godstark82/flixstar/releases/download/$version%2B$versionCode/app-arm64-v8a-release.apk';
  return result;
}
