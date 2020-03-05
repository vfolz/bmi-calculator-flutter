import 'package:flutter/material.dart';
import 'constants.dart';
import 'reusable_card.dart';
class ResultsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body:  Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              child: Text('Your Results',style: kTitleTextStyle,),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(colour: kActiveCardColour,
            cardChild: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text('Normal',style:kResultsTextStyle),
                Text(
                  '25.0',
                  style: kBMITextStyle,
                )
              ],
            ),

            )
          )
        ],


      ),
    );
  }
}



