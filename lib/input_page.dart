import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_card.dart';
import 'icon_content.dart';
import 'constants.dart';

enum Gender{
  male,
  female
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  Color maleCardColour = kInactiveCardColour;
  Color femaleCardColour = kInactiveCardColour;
  Gender selectedGender;
  int height = 177;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                      child: ReusableCard(
                        onPress: (){
                          setState(() {
                            selectedGender = Gender.male;
                          });
                        },

                    colour: selectedGender == Gender.male ? kActiveCardColour : kInactiveCardColour,
                          cardChild: ReusableIcon(
                         icon: FontAwesomeIcons.mars, currentText: 'MALE'),
                  )),
                  Expanded(
                      child: ReusableCard(
                        onPress: (){
                          setState(() {
                            selectedGender = Gender.female;
                          });
                        },
                        colour: selectedGender == Gender.female ? kActiveCardColour : kInactiveCardColour,
                      cardChild: ReusableIcon(
                        icon: FontAwesomeIcons.venus, currentText: 'FEMALE'),
                      )),
                ],
              ),
          ),
          Expanded(
              child:
              ReusableCard(
                  colour: kActiveCardColour,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('HEIGHT',style: kLabelTextStyle,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,

                        children: <Widget>[
                          Text(
                            height.toString(), style: kNumberStyle,
                          ),
                          Text(
                            'cm',
                            style: kLabelTextStyle,
                          )
                        ],
                      ),
                      SliderTheme(
                        data: SliderTheme.of(context).copyWith(
                          inactiveTrackColor:  Color(0xFF8D8E98),
                          activeTrackColor: Colors.white,
                          overlayColor: Color(0x29EB1555) ,
                          thumbColor: Color(0xFFEB1555),
                           thumbShape:
                            RoundSliderThumbShape(enabledThumbRadius: 15.0),
                           overlayShape:
                            RoundSliderOverlayShape(overlayRadius: 30.0 )
                        ),

                        child: Slider(
                        value: height.toDouble(),
                          min: 120.0,
                          max: 220.0,

                          onChanged: (double newValue) {
                          setState(() {
                            height = newValue.toInt();
                          });
                          },
                        ),
                      ),
                    ],
                  )
                ,)),
          Expanded(
            child: Row(

              children: <Widget>[
                Expanded(child: ReusableCard(colour: kCardColour)),
                Expanded(child: ReusableCard(colour: kCardColour)),
              ],
            ),
          ),
          Container(
            color: kBottomContainerColour,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: 80.0,
          )
        ],
      ),
    );
  }
}

