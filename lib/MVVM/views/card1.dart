import 'package:aimedlabs_assignment/MVVM/viewmodel.dart/card_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Card1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<CardViewModel>(context);
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    double cardWidth = screenWidth * viewModel.card1Width;
    double greenAreaWidth = cardWidth * 0.6; // Adjust this ratio as needed
    double cardHeight = screenHeight * viewModel.card1Height;
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xffd18585),
          borderRadius: BorderRadius.circular(10.0),
        ),
        height: 200,
        //height: cardHeight * 0.2, // Adjust the ratio as needed
        width: greenAreaWidth * 0.5, // Adjust the ratio as needed
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xffc4c4c4),
                    borderRadius: BorderRadius.circular(10.0),
                  ),

                  //height: cardHeight * 0.2, // Adjust the ratio as needed
                  width: greenAreaWidth * 0.5, // Adjust the ratio as needed
                ),
              ),
              SizedBox(height: cardHeight * 0.1),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xffa8d8ad),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  height: 50,
                  //height: cardHeight * 0.3, // Set a fixed height for the green area
                  width: greenAreaWidth,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
