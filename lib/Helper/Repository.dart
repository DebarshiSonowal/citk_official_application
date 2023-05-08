import 'package:flutter/cupertino.dart';

class Repository extends ChangeNotifier{
  int currentPageIndex = 0;



  //methods
  setCurrentPage(int i) {
    currentPageIndex = i;
    notifyListeners();
  }

}