import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:captain_earth_extension/services/cards.dart';

class ScoreAndVideo extends StatefulWidget {
  const ScoreAndVideo({Key? key}) : super(key: key);

  @override
  _ScoreAndVideoState createState() => _ScoreAndVideoState();
}

class _ScoreAndVideoState extends State<ScoreAndVideo> {

  List<HomeText> testResultNavCardList = [
    HomeText('Save my Score as E-prescription', '/eprescription'),
    HomeText('Meet a Doctor', '/doctorList'),
  ];

  Map data = {};
  late String url;
  //TODO: Add new video url here
  List<String> vidURL = [
    'https://youtu.be/dQw4w9WgXcQ',
    'https://youtu.be/uE-1RPDqJAY',
  ];



  late YoutubePlayerController _controller;

  void runYoutubePlayer(){
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
    url = vidURL[1];
    runYoutubePlayer();
    super.initState();
  }

  @override
  void deactivate() {
    _controller.pause();
    print('Youtube controller Deactivated');
    super.deactivate();
  }

  @override
  void dispose() {
    _controller.dispose();
    print('Youtube controller disposed');
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    data = ModalRoute.of(context)?.settings.arguments as Map;
    //TODO: Design the score and Video page here
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
                  '${data['score'].toString()}!',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 60.0,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                margin: EdgeInsets.all(20.0),
                child: Text(
                  'Checkout what our doctors say about your score',
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
              ),
            ),
            //TODO: Design the youtube player UI here
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
            ),
            SizedBox(
              height: 30.0,
            ),
            Column(
              children: [
                ElevatedButton(
                    onPressed: (){
                      deactivate();
                      Navigator.pushNamed(context, '/eprescription');
                    },
                    child: Text('Save my Score as E-prescription'),
                ),
                SizedBox(height: 10.0,),
                ElevatedButton(
                  onPressed: (){
                    deactivate();
                    Navigator.pushNamed(context, '/problemlist');
                  },
                  child: Text('Consult a Doctor'),
                ),
              ],
              ///children: testResultNavCardList.map((homeText) => ScorePageCard(homeText)).toList(),
            ),
            SizedBox(height: 30.0,),
          ],
        ),
      ),
    );
  }
}
