import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
import 'package:money_management_app/routes/routes.dart';


class HomePageController extends ChangeNotifier{

  int currentIndex=0;

  void onTapped(int changedIndex,BuildContext context){
    currentIndex=changedIndex;
    notifyListeners();
  }
}