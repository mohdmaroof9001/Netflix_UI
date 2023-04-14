import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:netflix/alldatamodal.dart';
import 'package:netflix/description.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final MoviesPoster = [
    "assest/bollywood/kabir.jpg",
    "assest/poster/StrangerThings.jpg",
    "assest/poster/spiderman.jpg",
    "assest/southmovie/kaala.jpg",
    "assest/poster/got.jpg",
    "assest/poster/vikings.jpg",
    "assest/southmovie/kgf.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset(
              'assest/N.png',
              //  fit: BoxFit.cover,
              width: 30,
              height: 80,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                "TV Shows",
                style: TextStyle(fontSize: 15),
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.transparent,
                elevation: 0,
                // fixedSize: Size(50, 60),
                maximumSize: Size(
                  MediaQuery.of(context).size.width,
                  MediaQuery.of(context).size.height,
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                "Movies",
                style: TextStyle(fontSize: 15),
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.transparent,
                elevation: 0,
                // fixedSize: Size(50, 60),
                maximumSize: Size(
                  MediaQuery.of(context).size.width,
                  MediaQuery.of(context).size.height,
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                "My List",
                style: TextStyle(fontSize: 15),
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.transparent,
                elevation: 0,

                // fixedSize: Size(50, 60),
                maximumSize: Size(
                  MediaQuery.of(context).size.width,
                  MediaQuery.of(context).size.height,
                ),
              ),
            ),
          ],
        ),
      ),
      extendBodyBehindAppBar: true,
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.black,
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    // color: Colors.grey,
                    height: 480,
                    child: CarouselSlider.builder(
                      itemCount: MoviesPoster.length,
                      itemBuilder: (context, indexNo, realindex) {
                        final poster = MoviesPoster[indexNo];
                        return Poster(poster, indexNo);
                      },
                      options: CarouselOptions(
                        height: 600,
                        autoPlay: true,
                        viewportFraction: 1,
                      ),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 410,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          ElevatedButton(
                              onPressed: () {},
                              child: Column(
                                children: const [
                                  Icon(
                                    Icons.add,
                                    color: Colors.white,
                                    size: 35,
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "My List",
                                    style: TextStyle(color: Colors.white),
                                  )
                                ],
                              ),
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.transparent,
                                  elevation: 0,
                                  shape: CircleBorder())),
                          ElevatedButton(
                              onPressed: () {
                                luncherUrl();
                              },
                              child: Row(
                                children: const [
                                  Icon(
                                    Icons.play_arrow,
                                    color: Colors.black,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "Play",
                                    style: TextStyle(color: Colors.black),
                                  )
                                ],
                              ),
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.white)),
                          ElevatedButton(
                              onPressed: () {},
                              child: Column(
                                children: const [
                                  Icon(
                                    Icons.info,
                                    color: Colors.white,
                                    size: 35,
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "Info",
                                    style: TextStyle(color: Colors.white),
                                  )
                                ],
                              ),
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.transparent,
                                  elevation: 0,
                                  shape: CircleBorder())),
                        ],
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Category("Resently watched", "View All")),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Container(
                  height: 200,
                  child: ListView.builder(
                      physics: BouncingScrollPhysics(),
                      itemCount: resentmovieData.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, indexNo) {
                        return Column(
                          children: [
                            Row(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    // print(indexNo);
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => infoPage(
                                                  data:
                                                      resentmovieData[indexNo],
                                                )));
                                  },
                                  child: Container(
                                    margin: EdgeInsets.only(right: 20),
                                    height: 200,
                                    width: 150,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Image.asset(
                                      resentmovieData[indexNo].poster,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        );
                      }),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Category("Hollywood Movie", "View All")),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Container(
                  height: 200,
                  child: ListView.builder(
                      physics: BouncingScrollPhysics(),
                      itemCount: hollywoodMovieData.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, indexNo) {
                        return Column(
                          children: [
                            Row(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => infoPage(
                                                  data: hollywoodMovieData[
                                                      indexNo],
                                                )));
                                  },
                                  child: Container(
                                    margin: EdgeInsets.only(right: 20),
                                    height: 200,
                                    width: 150,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Image.asset(
                                      hollywoodMovieData[indexNo].poster,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        );
                      }),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Category("Bollywood Movies", "View All")),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Container(
                  height: 200,
                  child: ListView.builder(
                      physics: BouncingScrollPhysics(),
                      itemCount: bollywoodMovieData.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, indexNo) {
                        return Column(
                          children: [
                            Row(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => infoPage(
                                                  data: bollywoodMovieData[
                                                      indexNo],
                                                )));
                                  },
                                  child: Container(
                                    margin: EdgeInsets.only(right: 20),
                                    height: 200,
                                    width: 150,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Image.asset(
                                      bollywoodMovieData[indexNo].poster,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        );
                      }),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Category("South Movies", "View All")),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Container(
                  height: 200,
                  child: ListView.builder(
                      physics: BouncingScrollPhysics(),
                      itemCount: southMovieData.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, indexNo) {
                        return Column(
                          children: [
                            Row(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => infoPage(
                                                  data: southMovieData[indexNo],
                                                )));
                                  },
                                  child: Container(
                                    margin: EdgeInsets.only(right: 20),
                                    height: 200,
                                    width: 150,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Image.asset(
                                      southMovieData[indexNo].poster,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        );
                      }),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.play_circle_outline),
            label: 'Coming',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.download_rounded),
            label: 'Download',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            label: 'More',
          ),
        ],
        // unselectedFontSize: 10,
        backgroundColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.white,
        unselectedItemColor: Colors.grey,
      ),
    );
  }

  Poster(String image, int index) {
    return Container(
      // width: MediaQuery.of(context).size.width,
      child: Image.asset(image, fit: BoxFit.cover),
    );
  }

  Category(String movie, String view) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          movie,
          style: TextStyle(color: Colors.white, fontSize: 15),
        ),
        ElevatedButton(
          onPressed: () {},
          child: Text(
            view,
            style: TextStyle(fontSize: 15, color: Colors.red),
          ),
          style: ElevatedButton.styleFrom(
            primary: Colors.transparent,
            elevation: 0,
          ),
        ),
      ],
    );
  }

  void luncherUrl() async {
    var url = await canLaunch('https://youtu.be/Hi4ktzK9g0I')
        ? await launch('https://youtu.be/Hi4ktzK9g0I')
        : throw 'Could Not Lunch $luncherUrl()';
  }
}
