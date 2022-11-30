import 'package:sih_finals/vid_train/vid_train/vid_train/videos/videoplayerwidget.dart';
import 'package:video_player/video_player.dart';
import 'package:flutter/material.dart';

void main() => runApp(VieoaaApp());

class VieoaaApp extends StatefulWidget {
  @override
  _VideoAppState createState() => _VideoAppState();
}

class _VideoAppState extends State<VieoaaApp> {
  late VideoPlayerController _controller;
  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(
        'https://sihtamil.s3.ap-south-1.amazonaws.com/What+is+electricity+-+Electricity+Explained+-+(1).mp4')
      ..addListener(() => setState(() {}))
      ..setLooping(true)
      ..initialize().then((_) => _controller.play());
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Video Demo',
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 152, 231, 245),
                Color.fromARGB(255, 241, 239, 235),
                Color.fromARGB(255, 246, 215, 169),
              ],
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
            ),
          ),
          child: Center(
            child: _controller.value.isInitialized
                ? VideoPlayerWidget(controller: _controller)
                : Container(),
          ),
        ),
        // floatingActionButton: FloatingActionButton(
        //   onPressed: () {
        //     setState(() {
        //       _controller.value.isPlaying
        //           ? _controller.pause()
        //           : _controller.play();
        //     });
        //   },
        // child: Icon(
        //   _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
        // ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}
