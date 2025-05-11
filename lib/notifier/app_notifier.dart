import 'package:flutter/material.dart';



class AppState extends ChangeNotifier {


  int selectedIndex = 0;

  void onItemTapped(int index) {
      selectedIndex = index;
      notifyListeners();
  }

}
