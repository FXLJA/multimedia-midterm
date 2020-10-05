import 'chewie_list_item.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:video_player/video_player.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage()
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Image(
            image: AssetImage('assets/Banner.jpg'),
            fit: BoxFit.fill,
          ),
        ),
        body: ListView(
          children: <Widget>[
            SizedBox(
              height: 250.0,
              width: 300.0,
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Carousel(
                  autoplayDuration: Duration(seconds: 3),
                  showIndicator: true,
                  dotSize: 3.0,
                  indicatorBgPadding: 10.0,
                  images: [
                    ExactAssetImage("assets/ArchdragonPeak.jpg"),
                    ExactAssetImage("assets/AriandelBridge.jpg"),
                    ExactAssetImage("assets/DregHeap.jpg"),
                    ExactAssetImage("assets/GaelArena.jpg"),
                    ExactAssetImage("assets/PVE.jpg"),
                    ExactAssetImage("assets/PVP.jpg"),
                    ExactAssetImage("assets/SisterFriede.jpeg"),
                    ExactAssetImage("assets/RingedCity.jpg"),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            ChewieListItem(
              videoPlayerController: VideoPlayerController.asset(
                'assets/IudexGundyr.mp4',
              ),
              looping: false,
            ),
          ],
        ));
  }
}
