import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class VideoLinks extends StatelessWidget {
  static const String youtubeVideoUrl = 'https://youtu.be/J7nM2vMHufE';

  Future<void> _launchYoutubeVideo() async {
    if (await canLaunch(youtubeVideoUrl)) {
      await launch(youtubeVideoUrl);
    } else {
      throw 'Could not launch $youtubeVideoUrl';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          title: Text('Watch YouTube Video'),
          onTap: () {
            _launchYoutubeVideo();
          },
        ),
      ],
    );
  }
}
