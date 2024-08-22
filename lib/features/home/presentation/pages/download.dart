import 'package:flix_web/core/utils/utils.dart';
import 'package:flix_web/features/home/presentation/widgets/header_dl_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class DownloadSection extends StatelessWidget {
  const DownloadSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueGrey.withOpacity(0.1),
      padding: EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Download FlixStar Apk',style: Theme.of(context).textTheme.titleLarge,),
          SizedBox(height: 10),
          Text('Just take care of the FlixStar & leave the rest to us.'),
          SizedBox(height: 20),
          Container(
            height: 250,
            width: 250,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.grey.withOpacity(0.2),
            ),
            padding: EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/flixstar.png',
                  height: 100,
                  width: 100,
                ),
                SizedBox(height: 20),
                HeaderDownloadButton(
                    isHeader: false,
                    icon: Icon(Icons.download_sharp),
                    onTap: () async {
                      
                      final url = await getDownloadUrl();
                      if (await canLaunchUrl(Uri.parse(url))) {
                        launchUrl(Uri.parse(url));
                      } else {
                        // ignore: use_build_context_synchronously
                        ScaffoldMessenger.maybeOf(context)?.showSnackBar(
                            SnackBar(content: Text('Please try again')));
                      }
                    },
                    text: 'Download')
              ],
            ),
          )
        ],
      ),
    );
  }
}
