import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../core/resources/app_svgs.dart';

class SpotifyBtn extends StatelessWidget {
  const SpotifyBtn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        padding: .symmetric(vertical:2,horizontal:15),
        decoration: BoxDecoration(
          borderRadius: .circular(12.0),
          border: .all(
            color:Colors.black26,
            width:2
          )
        ),
        child: Row(
          children: [
            SvgPicture.asset(AppSvgs.spotifySvg,height: 20,width: 20),
            const SizedBox(width: 2),
            Text("Connect to Spotify",style: TextTheme.of(context).labelSmall,)
          ],
        ),
      ),
    );
  }
}
