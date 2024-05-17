import 'package:flutter/material.dart';
import 'package:movieplay/modal_class/global_models/TrailerModel.dart';
import 'package:movieplay/services/apis_service/main_service.dart';
import 'package:movieplay/theme/theme_state.dart';
import 'package:provider/provider.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoPlayer extends StatefulWidget {
  final ThemeData themeData;
  final String? api, title;

  const VideoPlayer({super.key, required this.themeData, this.api, this.title});

  @override
  State<VideoPlayer> createState() => _VideoPlayerState();
}

class _VideoPlayerState extends State<VideoPlayer> {
  List<ResultsV>? traillerList;

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    final state = Provider.of<ThemeState>(context);
    return Theme(
      data: state.themeData,
      child: Column(
        children: <Widget>[
          SizedBox(
            width: double.infinity,
            height: 350,
            child: traillerList == null
                ? const Center(
                    child: CircularProgressIndicator(),
                  )
                : ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    itemCount: traillerList!.length,
                    // scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        child: YoutubePlayer(
                          controller: YoutubePlayerController(
                            initialVideoId:
                                'a2pMglh6byo', //traillerList![index].key!,
                            //YoutubePlayer.convertUrlToId(traillerList![index].key!),
                            flags: const YoutubePlayerFlags(
                              autoPlay: false,
                              mute: true,
                              // isLive: false,
                              // hideControls: false,
                              // controlsVisibleAtStart: false,
                              // hideThumbnail: false,
                              // disableDragSeek: false,
                              // enableCaption: true,
                              // captionLanguage: 'en',
                              // loop: false,
                              // forceHD: false,
                              // useHybridComposition: true,
                              // showLiveFullscreenButton: true,
                            ),
                          ),
                          showVideoProgressIndicator: true,
                          progressIndicatorColor: Colors.blue,
                          progressColors: const ProgressBarColors(
                            playedColor: Colors.blue,
                            handleColor: Colors.amberAccent,
                            // bufferedColor: Colors.redAccent,
                            // backgroundColor: state.themeData.primaryColor,
                          ),
                        ),
                      );
                    },
                  ),
          ),
        ],
      ),
    );
  }
}
