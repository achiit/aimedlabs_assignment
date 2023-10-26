import 'package:flutter/material.dart';

class CardViewModel extends ChangeNotifier {
  double card1Width = 1.46; // Initial width as a proportion of the screen width
  double card2Width = 0.8; // Initial width as a proportion of the screen width
  double card1Height = 0.5; // Initial width as a proportion of the screen width
  double card2Height = 0.8; // Initial width as a proportion of the screen width

  void updateCard1Width(double newWidth) {
    card1Width = newWidth;
    notifyListeners();
  }

  void updateCard2Width(double newWidth) {
    card2Width = newWidth;
    notifyListeners();
  }

  void updateCard1Height(double newHeight) {
    card1Height = newHeight;
    notifyListeners();
  }

  void updateCard2Height(double newHeight) {
    card2Height = newHeight;
    notifyListeners();
  }
}
