import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Videos extends StatefulWidget {
  const Videos({Key? key, required this.videoLink}) : super(key: key);
  final String videoLink;

  @override
  _VideosState createState() => _VideosState();
}

class _VideosState extends State<Videos> {
  String? videoId;

  late YoutubePlayerController _youtubePlayerController;
  void runYoutubePlayer() {
    _youtubePlayerController = YoutubePlayerController(
        initialVideoId: videoId.toString(),
        flags: const YoutubePlayerFlags(
          enableCaption: false,
          isLive: false,
          autoPlay: false,
        ));
  }

  @override
  void initState() {
    videoId = YoutubePlayer.convertUrlToId(widget.videoLink.toString());
    runYoutubePlayer();
    super.initState();
  }

  @override
  void deactivate() {
    _youtubePlayerController.pause();
    super.deactivate();
  }

  @override
  void dispose() {
    _youtubePlayerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return YoutubePlayerBuilder(
        player: YoutubePlayer(controller: _youtubePlayerController),
        builder: (context, player) {
          return player;
        });
  }
}
