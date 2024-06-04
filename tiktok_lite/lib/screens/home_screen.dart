
import 'package:flutter/material.dart';
import '../widgets/video_player_widget.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  List<String> _videoUrls = [
    'https://example.com/video1.mp4',
    'https://example.com/video2.mp4',
    'https://example.com/video3.mp4',
    'https://example.com/video4.mp4',
  ];

  @override
  void initState() {
    super.initState();
    _startAutoScroll();
  }

  void _startAutoScroll() {
    Future.delayed(Duration(seconds: 30), () {
      setState(() {
        _currentIndex = (_currentIndex + 1) % _videoUrls.length;
      });
      _startAutoScroll();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: VideoPlayerWidget(
        videoUrl: _videoUrls[_currentIndex],
      ),
    );
  }
}
    