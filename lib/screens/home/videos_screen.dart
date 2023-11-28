// import 'package:edtech_application/provider/home_provider.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:provider/provider.dart';
// import 'package:youtube_player_flutter/youtube_player_flutter.dart';
//
// class VideoViewScreen extends StatefulWidget {
//   final int selectedIndex;
//   const VideoViewScreen({super.key, required this.selectedIndex});
//
//   @override
//   State<VideoViewScreen> createState() => _VideoViewScreenState();
// }
//
// class _VideoViewScreenState extends State<VideoViewScreen> {
//   late final YoutubePlayerController _controller;
//   bool isPlaying = false;
//   bool get webViewMediaPlaybackAlwaysAllow => true;
//   late PlayerState _playerState;
//   bool _isPlayerReady = false;
//
//   @override
//   void initState() {
//     var provider = Provider.of<HomeProvider>(context, listen: false);
//
//     print(
//         "=============????${provider.videoInfo[widget.selectedIndex].data![provider.videoIndex].link!}");
//
//     try {
//       _controller = YoutubePlayerController(
//         initialVideoId: provider
//             .videoInfo[widget.selectedIndex].data![provider.videoIndex].link!,
//         flags: const YoutubePlayerFlags(
//           showLiveFullscreenButton: false,
//           mute: false,
//           autoPlay: true,
//           disableDragSeek: false,
//           loop: false,
//           isLive: false,
//           forceHD: false,
//           enableCaption: true,
//         ),
//       )..addListener(listener);
//     } catch (e) {
//       print("=============????${e}");
//     }
//     _playerState = PlayerState.unknown;
//
//     super.initState();
//   }
//
//   void listener() {
//     if (_controller.value.isReady) {
//       setState(() {});
//     }
//   }
//
//   @override
//   void deactivate() {
//     // Pauses video while navigating to next page.
//     _controller.pause();
//     super.deactivate();
//   }
//
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }
//
//   void _playNextVideo() {
//     var provider = Provider.of<HomeProvider>(context, listen: false);
//     if (provider.videoInfo[widget.selectedIndex].data![provider.videoIndex]
//                 .link !=
//             null &&
//         provider.videoInfo[widget.selectedIndex].data![provider.videoIndex]
//             .link!.isNotEmpty &&
//         provider.videoIndex <
//             provider.videoInfo[widget.selectedIndex].data!.length - 1) {
//       provider.incrementVideoIndex();
//       _controller.cue(provider
//           .videoInfo[widget.selectedIndex].data![provider.videoIndex].link!);
//     } else {
//       print('No more videos to play.');
//     }
//   }
//
//   void _playPreviousVideo() {
//     var provider = Provider.of<HomeProvider>(context, listen: false);
//     if (provider.videoInfo[widget.selectedIndex].data![provider.videoIndex]
//                 .link !=
//             null &&
//         provider.videoInfo[widget.selectedIndex].data![provider.videoIndex]
//             .link!.isNotEmpty &&
//         provider.videoIndex > 0) {
//       provider.decrementVideoIndex();
//       _controller.cue(provider
//           .videoInfo[widget.selectedIndex].data![provider.videoIndex].link!);
//     } else {
//       print('No previous videos.');
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Consumer<HomeProvider>(builder: (context, provider, child) {
//       return Scaffold(
//         body: Column(
//           children: [
//             Container(
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(10),
//               ),
//               width: double.infinity,
//               child: YoutubePlayer(
//                 controller: _controller,
//                 showVideoProgressIndicator: true,
//                 onReady: () {
//                   _controller.addListener(listener);
//                 },
//               ),
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 provider.videoIndex == 0
//                     ? const SizedBox.shrink()
//                     : Expanded(
//                         child: ElevatedButton(
//                             onPressed: _playPreviousVideo,
//                             child: Text(
//                               "Previous",
//                               style: Theme.of(context)
//                                   .textTheme
//                                   .labelMedium!
//                                   .copyWith(color: Colors.white),
//                             ))),
//                 Expanded(
//                     child: ElevatedButton(
//                         onPressed: () {},
//                         child: Text("Bookmark",
//                             style: Theme.of(context)
//                                 .textTheme
//                                 .labelMedium!
//                                 .copyWith(color: Colors.white)))),
//                 Expanded(
//                     child: ElevatedButton(
//                         onPressed: _playNextVideo,
//                         child: Text("Next",
//                             style: Theme.of(context)
//                                 .textTheme
//                                 .labelMedium!
//                                 .copyWith(color: Colors.white))))
//               ],
//             )
//           ],
//         ),
//       );
//     });
//   }
// }

import 'package:edtech_application/componnents/custom_appbar.dart';
import 'package:edtech_application/componnents/custom_snakbar.dart';
import 'package:edtech_application/provider/home_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoViewScreen extends StatefulWidget {
  final int selectedIndex;
  const VideoViewScreen({super.key, required this.selectedIndex});

  @override
  State<VideoViewScreen> createState() => _VideoViewScreenState();
}

class _VideoViewScreenState extends State<VideoViewScreen> {
  String? videoId = "";

  late YoutubePlayerController controller;
  @override
  void initState() {
    var provider = Provider.of<HomeProvider>(context, listen: false);
    print(
        "=====================>>${provider.videoInfo[widget.selectedIndex].data![provider.videoIndex].link!}");
    videoId = YoutubePlayer.convertUrlToId(provider
        .videoInfo[widget.selectedIndex].data![provider.videoIndex].link!);

    controller = YoutubePlayerController(
      initialVideoId: videoId!,
      flags: const YoutubePlayerFlags(
        showLiveFullscreenButton: false,
        mute: false,
        autoPlay: false,
        disableDragSeek: false,
        loop: false,
        isLive: false,
        forceHD: false,
        enableCaption: true,
      ),
    )..addListener(listener);
    provider.videoInfo[widget.selectedIndex].data!
        .removeAt(provider.videoIndex);
    super.initState();
  }

  void listener() {
    if (controller.value.isReady) {
      setState(() {});
    }
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  void deactivate() {
    controller.pause();
    super.deactivate();
  }

  void _playNextVideo() {
    var provider = Provider.of<HomeProvider>(context, listen: false);
    if (provider.videoInfo[widget.selectedIndex].data![provider.videoIndex]
                .link !=
            null &&
        provider.videoInfo[widget.selectedIndex].data![provider.videoIndex]
            .link!.isNotEmpty &&
        provider.videoIndex <
            provider.videoInfo[widget.selectedIndex].data!.length - 1) {
      provider.incrementVideoIndex();
      controller.load(YoutubePlayer.convertUrlToId(provider
          .videoInfo[widget.selectedIndex].data![provider.videoIndex].link!)!);
      setState(() {});
    } else {
      successSnack(context: context,message: "you have completed your course please collect certificate");
    }
  }

  void _playPreviousVideo() {
    var provider = Provider.of<HomeProvider>(context, listen: false);
    if (provider.videoInfo[widget.selectedIndex].data![provider.videoIndex]
                .link !=
            null &&
        provider.videoInfo[widget.selectedIndex].data![provider.videoIndex]
            .link!.isNotEmpty &&
        provider.videoIndex > 0) {
      provider.decrementVideoIndex();
      controller.load(YoutubePlayer.convertUrlToId(provider
          .videoInfo[widget.selectedIndex].data![provider.videoIndex].link!)!);
      setState(() {});
    } else {
      print('No previous videos.');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeProvider>(builder: (context, provider, child) {
      return Scaffold(
          body: SingleChildScrollView(
        child: Column(
          children: [
            customAppbar(context,provider),
            SizedBox(height: 10,),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              width: double.infinity,
              child: YoutubePlayer(
                controller: controller,
                showVideoProgressIndicator: true,
                onReady: () {
                  controller.addListener(listener);
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                provider.videoIndex == 0
                    ? const SizedBox.shrink()
                    : Expanded(
                        child: ElevatedButton(
                            onPressed: _playPreviousVideo,
                            child: Text(
                              "Previous",
                              style: Theme.of(context)
                                  .textTheme
                                  .labelMedium!
                                  .copyWith(color: Colors.white),
                            ))),
                Expanded(
                    child: ElevatedButton(
                        onPressed: () {
                          provider.setBookmark(
                              widget.selectedIndex,
                              provider.videoInfo[widget.selectedIndex]
                                  .data![provider.videoIndex].link!,
                              provider.videoIndex, (value, message) {
                            if (value) {
                              successSnack(context: context, message: message);
                            } else {
                              errorSnack(context: context, message: message);
                            }
                          });
                        },
                        child: Text("Bookmark",
                            style: Theme.of(context)
                                .textTheme
                                .labelMedium!
                                .copyWith(color: Colors.white)))),
                Expanded(
                    child: ElevatedButton(
                        onPressed: _playNextVideo,
                        child: Text("Next",
                            style: Theme.of(context)
                                .textTheme
                                .labelMedium!
                                .copyWith(color: Colors.white))))
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount:
                      provider.videoInfo[widget.selectedIndex].data!.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 200,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://img.youtube.com/vi/${YoutubePlayer.convertUrlToId(provider.videoInfo[widget.selectedIndex].data![index].link!)}/0.jpg"),
                                fit: BoxFit.cover)),
                      ),
                    );
                  }),
            )
          ],
        ),
      ));
    });
  }
}
