import 'package:flutter/material.dart';
import 'videos/video_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'YouTube Player',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const VideoList());
  }
}
