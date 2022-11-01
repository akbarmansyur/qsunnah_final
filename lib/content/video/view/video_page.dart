import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qsunnah_final/content/video/video_controller.dart';

class VideoPage extends GetView<VideoController> {
  const VideoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 100,
          ),
          Text('Video Content')
        ],
      ),
    );
  }
}
