import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../routing/routes.dart';
class GetStartedBtn extends StatelessWidget {
  const GetStartedBtn({
    super.key, required this.page, required this.nextPage,
  });
  final int page;

  final VoidCallback nextPage;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(
              onPressed: (){
                if(page==0){
                nextPage();
                }else{
                  context.go(Routes.home);
                }

              },
              child: page!=0?Text("Get Started"):Text("Welcome")
          ),
        ),
        const SizedBox(
          height: 10,
        )
      ],
    );
  }
}