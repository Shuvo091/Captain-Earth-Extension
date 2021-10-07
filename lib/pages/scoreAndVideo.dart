import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class ScoreAndVideo extends StatefulWidget {
  const ScoreAndVideo({Key? key}) : super(key: key);

  @override
  _ScoreAndVideoState createState() => _ScoreAndVideoState();
}

class _ScoreAndVideoState extends State<ScoreAndVideo> {

  Map data = {};
  late String url;
  //TODO: Add new video url here
  List<String> vidURL = [
    'https://youtu.be/dQw4w9WgXcQ',
  ];



  late YoutubePlayerController _controller;

  void runYoutubePlayer() {
    _controller = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId(url)!,
      flags: YoutubePlayerFlags(
        enableCaption: false,
        isLive: false,
        autoPlay: false,

      ),

    );
  }

  @override
  void initState() {
    //TODO: give logic on which video to play
    url = vidURL[0];
    runYoutubePlayer();
    super.initState();
  }

  @override
  void deactivate() {
    _controller.pause();
    super.deactivate();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    data = ModalRoute.of(context)?.settings.arguments as Map;
    return Scaffold(
      backgroundColor: Colors.green[150],
      appBar: AppBar(
        backgroundColor: Colors.green[900],
        title: Text(
          'Your Score',
          style: TextStyle(
            fontSize: 20.0,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Center(
              child: Container(
                margin: EdgeInsets.all(20.0),
                child: Text(
                  'Your Health Score is: ',
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                margin: EdgeInsets.all(20.0),
                child: Text(
                  data['score'].toString(),
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 60.0,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20.0,),
            ///Design the youtube player UI here
            Container(
              margin: EdgeInsets.all(15.0),
              child: YoutubePlayerBuilder(
                player: YoutubePlayer(
                  controller: _controller,
                ),
                builder: (context,player) {
                  return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        player,
                        SizedBox(height: 40.0,),
                        Text(
                          'Youtube Player',
                        ),
                      ],
                    );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
