import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class SpokenEnglish extends StatefulWidget {
  const SpokenEnglish({super.key});

  @override
  State<SpokenEnglish> createState() => _SpokenEnglishState();
}

class _SpokenEnglishState extends State<SpokenEnglish> {
  late YoutubePlayerController youtubeCOntroller;
  @override
  void initState() {
    super.initState();

    youtubeCOntroller = YoutubePlayerController(
        initialVideoId: "hs0FEzGQed0",
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
// import 'package:flutter/material.dart';
// import 'package:youtube_player_flutter/youtube_player_flutter.dart';

// class SpokenEnglish extends StatefulWidget {
//   const SpokenEnglish({super.key});

//   @override
//   State<SpokenEnglish> createState() => _SpokenEnglishState();
// }

// class _SpokenEnglishState extends State<SpokenEnglish> {
//   late YoutubePlayerController youtubeController;

//   @override
//   void initState() {
//     super.initState();

//     youtubeController = YoutubePlayerController(
//       initialVideoId: "hs0FEzGQed0",
//       flags: const YoutubePlayerFlags(
//         autoPlay: true,
//         mute: false,
//       ),
//     );

//     youtubeController.addListener(() {
//       if (youtubeController.value.hasError) {
//         print("Error: ${youtubeController.value.errorCode}");
//       }
//     });
//   }

//   @override
//   void dispose() {
//     youtubeController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text("Spoken English")),
//       body: Center(
//         child: YoutubePlayer(
//           controller: youtubeController,
//           showVideoProgressIndicator: true,
//           onReady: () {
//             print('Player is ready.');
//           },
//           onEnded: (YoutubeMetaData metaData) {
//             print('Video has ended.');
//           },
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           setState(() {
//             youtubeController.value.isPlaying
//                 ? youtubeController.pause()
//                 : youtubeController.play();
//           });
//         },
//         child: Icon(
//           youtubeController.value.isPlaying ? Icons.pause : Icons.play_arrow,
//         ),
//       ),
//     );
//   }
// }
