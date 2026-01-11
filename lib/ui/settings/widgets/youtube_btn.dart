import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../core/resources/app_svgs.dart';

class YoutubeBtn extends StatelessWidget {
  const YoutubeBtn({
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
            SvgPicture.network(AppSvgs.youtubeSvg,height: 20.0,width: 20.0,),
            Text("Connect to Youtube Music",style: TextTheme.of(context).labelMedium)
          ],
        ),
      ),
    );
  }
}
