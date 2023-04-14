// import 'dart:js';

import 'package:flutter/material.dart';
import 'package:netflix/alldatamodal.dart';
import 'package:video_player/video_player.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class infoPage extends StatefulWidget {
  MovieData data;
  infoPage({Key? key, required this.data}) : super(key: key);

  @override
  _infoPageState createState() => _infoPageState(data);
}

class _infoPageState extends State<infoPage> {
  MovieData data;
  _infoPageState(this.data);
  late YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: data.url,
    flags: const YoutubePlayerFlags(
      // mute: false,
      autoPlay: false,
      // disableDragSeek: false,
      // loop: false,
      isLive: false,
      // forceHD: false,
      enableCaption: false,
    ),
  );

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
    return YoutubePlayerBuilder(
        player: YoutubePlayer(
          controller: _controller,
          showVideoProgressIndicator: true,
          progressIndicatorColor: Colors.blue,
        ),
        builder: (context, player) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.black,
              elevation: 0,
              title: Text("Detail movie"),
            ),
            body: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              color: Colors.black,
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 250,
                      child: player,
                      // color: Colors.white,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Text(
                        'Watch Trailer',
                        style: TextStyle(color: Colors.white, fontSize: 22),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 150,
                            height: 200,
                            color: Colors.white,
                            child: Image.asset(
                              data.poster,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Column(
                            // mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // SizedBox(
                              //   height: 25,
                              // ),
                              Text(
                                data.name,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Container(
                                height: 30,
                                width: 70,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.white,
                                  ),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Center(
                                  child: Text(data.cate,
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.white,
                                      )),
                                ),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Rating",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 15),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Icon(
                                    Icons.star_rate_rounded,
                                    color: Colors.yellow[700],
                                  ),
                                  Icon(
                                    Icons.star_rate_rounded,
                                    color: Colors.yellow[700],
                                  ),
                                  Icon(
                                    Icons.star_rate_rounded,
                                    color: Colors.yellow[700],
                                  ),
                                  Icon(
                                    Icons.star_rate_rounded,
                                    color: Colors.yellow[700],
                                  ),
                                  Icon(
                                    Icons.star_half_rounded,
                                    color: Colors.yellow[700],
                                  )
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Padding(
                        padding: const EdgeInsets.only(left: 15, right: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Plot",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 22),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              data.description,
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            )
                          ],
                        )),
                  ],
                ),
              ),
            ),
          );
        });
  }
}
