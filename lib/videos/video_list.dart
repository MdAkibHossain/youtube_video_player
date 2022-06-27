import 'package:flutter/material.dart';
import 'video.dart';

class VideoList extends StatefulWidget {
  const VideoList({Key? key}) : super(key: key);

  @override
  State<VideoList> createState() => _VideoListState();
}

class _VideoListState extends State<VideoList> {
  final List<String> _videoList = [
    "https://www.youtube.com/watch?v=pvuN_WvF1to",
    "https://www.youtube.com/watch?v=bmrN8Cw1zX4",
    "https://www.youtube.com/watch?v=8ymsheX4UsQ",
  ];
  String? videolink;
  int? click;
  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Videos"),
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                  itemCount: _videoList.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Videos(videoLink: _videoList[index]),
                          SizedBox(height: screenWidth * 0.10),
                          const Divider(
                            thickness: 2,
                          ),
                        ],
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
