import 'package:aimedlabs_assignment/MVVM/viewmodel.dart/card_viewmodel.dart';
import 'package:aimedlabs_assignment/MVVM/views/card1.dart';
import 'package:aimedlabs_assignment/MVVM/views/card2.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<CardViewModel>(context);
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    double cardWidth = screenWidth * viewModel.card1Width;
    double greenAreaWidth = cardWidth * 0.6; // Adjust this ratio as needed
    double cardHeight = screenHeight * viewModel.card1Height;

    return Scaffold(
      appBar: AppBar(
        title: Text('Responsive Cards'),
      ),
      body: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildListDelegate([
              Card1(),
              //SECOND BOX
              Card2()
            ]),
          ),
        ],
      ),
    );
  }
}
