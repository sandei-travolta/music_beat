import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:music_beat/ui/core/resources/app_svgs.dart';
import 'package:music_beat/ui/settings/widgets/youtube_btn.dart';

import 'widgets/spotify_btn.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});
  void connectSpotify(){

  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          const SizedBox(height: 20,),
          Row(
            children: [
              const SizedBox(width: 15),
              Container(
                padding: .only(left:20),
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  shape: .circle,
                  color: Colors.grey
                ),
              ),
              const SizedBox(width: 15),
              Column(
                crossAxisAlignment: .start,
                mainAxisAlignment: .end,
                children: [
                  Text("Guest Profile",style: TextTheme.of(context).headlineLarge),
                  Text("Link one platform to get started",style: TextTheme.of(context).labelMedium,)
                ],
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: .spaceEvenly,
            children: [
              SpotifyBtn(),
              YoutubeBtn()
            ],
          )
        ],
      ),
    );
  }
}

