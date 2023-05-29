
import 'package:flutter/material.dart';

class AddNewEntryController extends ChangeNotifier{
  int radioValue=1;
  int typeValue=1;

  void onValueChange(int index){
    radioValue=index;
    print(radioValue);
    notifyListeners();
  }
  void typeChanged(int index){
    typeValue=index;
    notifyListeners();
  }
}