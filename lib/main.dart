import 'package:aimedlabs_assignment/MVVM/viewmodel.dart/card_viewmodel.dart';
import 'package:aimedlabs_assignment/MVVM/views/card1.dart';
import 'package:aimedlabs_assignment/MVVM/views/card2.dart';
import 'package:aimedlabs_assignment/MVVM/views/home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return ChangeNotifierProvider(
      create: (context) => CardViewModel(),
      child: MaterialApp(
        home: Home()
      ),
    );
  }
}
