import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_card.dart';
import 'icon_content.dart';

const cardColour = Color(0xFF1D1E33);
const bottomContainerColour = Color(0xFFEB1555);
const activeCardColour = Color(0xFF1D1E33);
const inactiveCardColour= Color(0xFF111328);


enum Gender{
  male,
  female
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  Color maleCardColour = inactiveCardColour;
  Color femaleCardColour = inactiveCardColour;
  Gender selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                      child: GestureDetector(
                        onTap: (){
                          setState(() {
                            selectedGender = Gender.male;
                          });
                        },
                        child: ReusableCard(
                    colour: selectedGender == Gender.male ? activeCardColour : inactiveCardColour,
                            cardChild: ReusableIcon(
                           icon: FontAwesomeIcons.mars, currentText: 'MALE'),
                  ),
                      )),
                  Expanded(
                      child: GestureDetector(
                        onTap: (){
                          setState(() {
                            selectedGender = Gender.female;
                        });

                        },
                        child: ReusableCard(
                          colour: selectedGender == Gender.female ? activeCardColour : inactiveCardColour,
                        cardChild: ReusableIcon(
                          icon: FontAwesomeIcons.venus, currentText: 'FEMALE'),
                        ),
                      )),
                ],


              ),
    
          ),
          Expanded(child: ReusableCard(colour: cardColour)),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(child: ReusableCard(colour: cardColour)),
                Expanded(child: ReusableCard(colour: cardColour)),
              ],
            ),
          ),
          Container(
            color: bottomContainerColour,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: 80.0,
          )
        ],
      ),
    );
  }
}

