import 'package:flutter/material.dart';

class OnboardingScreenViewModel extends ChangeNotifier{
  int _page=0;

  int get page => _page;
  void nextScreen(){
    if(_page==1){
      return;
    }
    _page++;
    notifyListeners();
  }
}