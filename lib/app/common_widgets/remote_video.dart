import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class RemoteVideoWidget extends StatefulWidget {
  const RemoteVideoWidget({super.key, required this.url});

  final String url;

  @override
  State<RemoteVideoWidget> createState() => _RemoteVideoWidgetState();
}

class _RemoteVideoWidgetState extends State<RemoteVideoWidget> {
  late VideoPlayerController _controller;
  late ChewieController _chewieController;

  @override
  void initState() {
    super.initState();
    init();
  }

  void init() async {
    _controller = VideoPlayerController.networkUrl(Uri.parse(widget.url));
    await _controller.initialize();

    _chewieController = ChewieController(
      videoPlayerController: _controller,
      autoPlay: true,
      looping: true,
    );
    setState(() {});
  }

  @override
  void dispose() {
    _controller.dispose();
    _chewieController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      padding: const EdgeInsets.all(20),
      child: _controller.value.isInitialized
          // ? AspectRatio(
          //     aspectRatio: _controller.value.aspectRatio,
          //     child: Stack(
          //       alignment: Alignment.bottomCenter,
          //       children: <Widget>[
          //         VideoPlayer(_controller),
          //         VideoProgressIndicator(_controller, allowScrubbing: true),
          //       ],
          //     ),
          //   )
          ? Chewie(
              controller: _chewieController,
            )
          : null,
    );
  }
}
