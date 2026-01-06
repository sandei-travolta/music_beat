import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../core/resources/app_svgs.dart';
import '../../core/resources/app_texts.dart';
class ScreenOne extends StatelessWidget {
  const ScreenOne({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: .end,
      children: [
        SvgPicture.asset(AppSvgs.onboardingSvg),
        Container(
            padding: .symmetric(vertical:12.0,horizontal:17.0),
            child: Text(AppTexts.onboardingText,style:Theme.of(context).textTheme.bodyMedium,)),
        const SizedBox(height: 50,),

      ],
    );
  }
}

