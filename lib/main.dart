import 'package:flutter/material.dart';
import 'package:netflix/homepage.dart';
// import 'package:splashscreen/splashscreen.dart';
import 'package:splash_screen_view/SplashScreenView.dart';

//import 'package:device_preview/device_preview.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Netflix(),
      // title: 'Squid Game',
    ),
  );
}

class Netflix extends StatefulWidget {
  const Netflix({Key? key}) : super(key: key);

  @override
  _NetflixState createState() => _NetflixState();
}

class _NetflixState extends State<Netflix> {
  @override
  Widget build(BuildContext context) {
    // var width = MediaQuery.of(context).size.width;
    // var height = MediaQuery.of(context).size.height;
    return SplashScreenView(
      navigateRoute: HomePage(),
      duration: 5000,
      imageSrc: "assest/netfolix.png",
      imageSize: 50,
      backgroundColor: Colors.black,
      // text: 'Created by Maroof',
      // textStyle: TextStyle(
      //   fontSize: 15,
      //   // fontWeight: FontWeight.bold,
      //   color: Colors.white,
      // ),
    );
    //  Container(
    //   width: double.infinity,
    //   height: double.infinity,
    //   //color: Colors.black,

    //   child: Center(
    //     child: SplashScreen(
    //       seconds: 4,
    //       backgroundColor: Colors.black,
    //       image: Image.asset(
    //         'assest/netflix-netflix-logo.gif',
    //         width: MediaQuery.of(context).size.width,
    //         height: MediaQuery.of(context).size.height,
    //         // fit: BoxFit.fill,
    //         alignment: Alignment.bottomCenter,
    //       ),
    //       loaderColor: Colors.transparent,
    //       photoSize: 200,
    //       navigateAfterSeconds: HomePage(),
    //     ),
    //   ),
    // );
  }
}

// class HomePage extends StatefulWidget {
//   const HomePage({Key? key}) : super(key: key);

//   @override
//   _HomePageState createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.black,
//         title: Image.asset(
//           'assest/netflix.png',
//           //  fit: BoxFit.cover,
//           width: 100,
//           height: 500,
//         ),
//         actions: [
//           ElevatedButton(
//             onPressed: () {},
//             child: Text("Help"),
//             style: ElevatedButton.styleFrom(
//               primary: Colors.black,
//               // fixedSize: Size(50, 60),
//               maximumSize: Size(
//                 MediaQuery.of(context).size.width,
//                 MediaQuery.of(context).size.height,
//               ),
//               shape: CircleBorder(),
//             ),
//           ),
//           ElevatedButton(
//             onPressed: () {},
//             child: Text("Privacy"),
//             style: ElevatedButton.styleFrom(
//               primary: Colors.black,
//               //  fixedSize: Size(80, 60),
//               maximumSize: Size(
//                 MediaQuery.of(context).size.width,
//                 MediaQuery.of(context).size.height,
//               ),
//               shape: CircleBorder(),
//             ),
//           )
//         ],
//       ),
//       body: Container(
//         width: double.infinity,
//         height: double.infinity,
//         color: Colors.black,
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.start,
//           children: [
//             SizedBox(
//               height: 50,
//             ),
//             Image.asset('assest/device.png'),
//             Text(
//               "Watch on any device",
//               style: TextStyle(
//                 color: Colors.white,
//                 fontSize: 30.0,
//               ),
//             ),
//             SizedBox(
//               height: 35,
//             ),
//             Text(
//               "Stream on your phone, tablet, laptop, TV.",
//               style: TextStyle(
//                 color: Colors.white,
//                 fontSize: 18.0,
//               ),
//             ),
//           ],
//         ),
//       ),
//       bottomNavigationBar: Row(
//         children: [
//           ElevatedButton(
//             onPressed: () {},
//             child: Text(
//               "SIGN IN",
//               style: TextStyle(
//                 fontSize: 18,
//               ),
//             ),
//             style: ElevatedButton.styleFrom(
//               primary: Colors.red,
//               fixedSize: Size(
//                 MediaQuery.of(context).size.width,
//                 50,
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
