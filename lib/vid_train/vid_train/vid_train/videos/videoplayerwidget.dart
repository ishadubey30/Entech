import 'package:flutter/material.dart';
import 'package:sih_finals/vid_train/vid_train/vid_train/videos/advancedoverlay.dart';

import 'package:video_player/video_player.dart';

class VideoPlayerWidget extends StatelessWidget {
  final VideoPlayerController controller;

  const VideoPlayerWidget({
    Key? key,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) =>
      controller != null && controller.value.isInitialized
          ? Container(alignment: Alignment.topCenter, child: buildVideo())
          : Container(
              height: 200,
              child: Center(child: CircularProgressIndicator()),
            );

  Widget buildVideo() => Stack(
        children: <Widget>[
          buildVideoPlayer(),
          Positioned.directional(
            start: 10,
            top: 10,
            end: 10,
            bottom: 10,
            textDirection: TextDirection.ltr,
            child: AdvancedOverlayWidget(
              controller: controller,
              onClickedFullScreen: () {},
            ),
          ),
        ],
      );

  Widget buildVideoPlayer() => AspectRatio(
        aspectRatio: controller.value.aspectRatio,
        child: VideoPlayer(controller),
      );
}
