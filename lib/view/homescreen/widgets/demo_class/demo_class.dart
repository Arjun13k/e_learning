// // // import 'package:flutter/material.dart';
// // // import 'package:video_player/video_player.dart';

// // // class DemoClassViedo extends StatefulWidget {
// // //   const DemoClassViedo({super.key});

// // //   @override
// // //   State<DemoClassViedo> createState() => _DemoClassViedoState();
// // // }

// // // class _DemoClassViedoState extends State<DemoClassViedo> {
// // //   late VideoPlayerController classViedo;
// // //   @override
// // //   void initState() {
// // //     classViedo = VideoPlayerController.asset(
// // //         "asset/viedo/10000000_939029177693141_1930698104948847409_n.mp4")
// // //       ..initialize().then((_) {
// // //         setState(() {});
// // //         classViedo.addListener(() {
// // //           setState(() {});
// // //         });
// // //       });
// // //     super.initState();
// // //   }

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return Scaffold(
// // //         appBar: AppBar(),
// // //         body: Center(
// // //             child: Column(
// // //           children: [
// // //             AspectRatio(
// // //               aspectRatio: classViedo.value.aspectRatio,
// // //               child: VideoPlayer(classViedo),
// // //             ),
// // //             Container(
// // //               child: Text("Total${classViedo.value.duration.toString()}"),
// // //             ),
// // //             Container(
// // //               child: VideoProgressIndicator(classViedo, allowScrubbing: true),
// // //             )
// // //           ],
// // //         )

// // //             // ListView.separated(
// // //             //     shrinkWrap: true,
// // //             //     itemBuilder: (context, index) => Material(
// // //             //           elevation: 5,
// // //             //           child: Container(
// // //             //             child: Row(
// // //             //               children: [
// // //             //                 Image.network(
// // //             //                   "https://cdn-icons-png.flaticon.com/512/1804/1804105.png",
// // //             //                   scale: 5,
// // //             //                 ),
// // //             //                 SizedBox(
// // //             //                   width: 30,
// // //             //                 ),
// // //             //                 Text(
// // //             //                   "data",
// // //             //                   style: TextStyle(
// // //             //                       fontWeight: FontWeight.bold, fontSize: 25),
// // //             //                 )
// // //             //               ],
// // //             //             ),
// // //             //           ),
// // //             //         ),
// // //             //     separatorBuilder: (context, index) => SizedBox(
// // //             //           height: 10,
// // //             //         ),
// // //             //     itemCount: 6),
// // //             ),
// // //         floatingActionButton: FloatingActionButton(
// // //           onPressed: () {
// // //             setState(() {
// // //               classViedo.value.isPlaying
// // //                   ? classViedo.pause()
// // //                   : classViedo.play();
// // //             });
// // //           },
// // //         ));
// // //   }
// // // }
// // import 'package:flutter/material.dart';
// // import 'package:video_player/video_player.dart';

// // class DemoClassViedo extends StatefulWidget {
// //   const DemoClassViedo({super.key});

// //   @override
// //   State<DemoClassViedo> createState() => _DemoClassViedoState();
// // }

// // class _DemoClassViedoState extends State<DemoClassViedo> {
// //   late VideoPlayerController classViedo;
// //   bool isInitialized = false;

// //   @override
// //   void initState() {
// //     super.initState();
// //     classViedo = VideoPlayerController.networkUrl(
// //         Uri.parse("https://youtu.be/OXQ5ee6p9ZA?si=oNXDG-eRg4mFPuwA"))
// //       ..initialize().then((_) {
// //         setState(() {
// //           isInitialized = true;
// //         });
// //       });
// //   }

// //   @override
// //   void dispose() {
// //     classViedo.dispose();
// //     super.dispose();
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(),
// //       body: Center(
// //         child: isInitialized
// //             ? Column(
// //                 mainAxisSize: MainAxisSize.min,
// //                 children: [
// //                   AspectRatio(
// //                     aspectRatio: classViedo.value.aspectRatio,
// //                     child: VideoPlayer(classViedo),
// //                   ),
// //                   Text("Total ${classViedo.value.duration.toString()}"),
// //                   VideoProgressIndicator(classViedo, allowScrubbing: true),
// //                 ],
// //               )
// //             : CircularProgressIndicator(),
// //       ),
// //       floatingActionButton: FloatingActionButton(
// //         onPressed: () {
// //           setState(() {
// //             classViedo.value.isPlaying ? classViedo.pause() : classViedo.play();
// //           });
// //         },
// //         child: Icon(
// //           classViedo.value.isPlaying ? Icons.pause : Icons.play_arrow,
// //         ),
// //       ),
// //     );
// //   }
// // }
// import 'package:flutter/material.dart';
// import 'package:video_player/video_player.dart';

// class DemoClassViedo extends StatefulWidget {
//   const DemoClassViedo({super.key});

//   @override
//   State<DemoClassViedo> createState() => _DemoClassViedoState();
// }

// class _DemoClassViedoState extends State<DemoClassViedo> {
//   late VideoPlayerController classViedo;
//   bool isInitialized = false;

//   @override
//   void initState() {
//     super.initState();
//     classViedo = VideoPlayerController.networkUrl(
//         Uri.parse("https://youtu.be/OXQ5ee6p9ZA?si=191tvhVAvHeVo0mu"))
//       ..initialize().then((_) {
//         if (mounted) {
//           setState(() {
//             isInitialized = true;
//           });
//         }
//       }).catchError((error) {
//         // Handle any errors during initialization
//         print("Error initializing video player: $error");
//       });
//   }

//   @override
//   void dispose() {
//     classViedo.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Video Player Demo")),
//       body: Center(
//         child: isInitialized
//             ? Column(
//                 mainAxisSize: MainAxisSize.min,
//                 children: [
//                   AspectRatio(
//                     aspectRatio: classViedo.value.aspectRatio,
//                     child: VideoPlayer(classViedo),
//                   ),
//                   Text(
//                       "Total duration: ${classViedo.value.duration.toString()}"),
//                   VideoProgressIndicator(classViedo, allowScrubbing: true),
//                 ],
//               )
//             : CircularProgressIndicator(),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           setState(() {
//             classViedo.value.isPlaying ? classViedo.pause() : classViedo.play();
//           });
//         },
//         child: Icon(
//           classViedo.value.isPlaying ? Icons.pause : Icons.play_arrow,
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class DemoClassViedo extends StatefulWidget {
  DemoClassViedo({super.key, required this.initialId});
  String initialId;

  @override
  State<DemoClassViedo> createState() => _DemoClassViedoState();
}

class _DemoClassViedoState extends State<DemoClassViedo> {
  late YoutubePlayerController youtubeCOntroller;
  @override
  void initState() {
    super.initState();

    youtubeCOntroller = YoutubePlayerController(
        initialVideoId: widget.initialId,
        flags: YoutubePlayerFlags(autoPlay: true, mute: false));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: YoutubePlayer(
          controller: youtubeCOntroller,
          bottomActions: [
            ProgressBar(
              isExpanded: true,
            ),
            CurrentPosition(),
            FullScreenButton(),
            PlayPauseButton(),
            RemainingDuration()
          ],
          showVideoProgressIndicator: true,
          onReady: () {
            print('Player is ready.');
          },
          onEnded: (YoutubeMetaData metaData) {
            print('Video has ended.');
          },
        ),
      ),
    );
  }
}
