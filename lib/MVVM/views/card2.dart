import 'package:aimedlabs_assignment/MVVM/viewmodel.dart/card_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Card2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<CardViewModel>(context);
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    double cardWidth = screenWidth * viewModel.card1Width;
    double greenAreaWidth = cardWidth * 0.6; // Adjust this ratio as needed
    double cardHeight = screenHeight * viewModel.card1Height;
    double greyBoxHeight = cardHeight * 0.2; // Adjust the ratio as needed

    return Stack(
      children: [
        Container(
          height: 200,
          padding: const EdgeInsets.all(35.0),
          child: Container(
            padding: const EdgeInsets.all(18.0),
            decoration: BoxDecoration(
              color: Color(0xffd18585),
              borderRadius: BorderRadius.circular(10.0),
            ),
            height: 300,
            width: cardWidth, // Adjust the ratio as needed
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xffa8d8ad),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  height: 50, // Set a fixed height for the green area
                  width: greenAreaWidth,
                ),
              ],
            ),
          ),
        ),
        Positioned(
          left: greenAreaWidth * 0.32,
          top: 2,
          child: Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xffc4c4c4),
                borderRadius: BorderRadius.circular(10.0),
              ),
              height: 50,
              width: greenAreaWidth * 0.5, // Adjust the ratio as needed
              // Maintain the container size
            ),
          ),
        ),
        // Positioned(
        //   top: greyBoxHeight, // To create a gap between grey and red boxes
        //   child: Container(
        //     decoration: BoxDecoration(
        //       color: Color(0xffa8d8ad),
        //       borderRadius: BorderRadius.circular(10.0),
        //     ),
        //     height: cardHeight * 0.3, // Set a fixed height for the green area
        //     width: greenAreaWidth,
        //   ),
        // ),
      ],
    );
  }
}
