import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../routing/routes.dart';
class GetStartedBtn extends StatelessWidget {
  const GetStartedBtn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(
              onPressed: (){
                context.go(Routes.home);
              },
              child: Text("Get Started")
          ),
        ),
        const SizedBox(
          height: 10,
        )
      ],
    );
  }
}