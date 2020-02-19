import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


const cardColour = Color(0xFF1D1E33);
const bottomContainerColour = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
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
                    child: ReusableCard(colour:cardColour,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          FontAwesomeIcons.mars,
                          size: 80.0,
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        Text('MALE', style: TextStyle(
                          fontSize: 18.0, color: Color(0xFF8D8E98),
                        ))
                      ],
                    ) ,)),
                Expanded(
                    child: ReusableCard(colour: cardColour)),
              ],
            ),
          ),
          Expanded(
              child: ReusableCard(colour: cardColour)),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                    child: ReusableCard(colour: cardColour)),
                Expanded(
                    child: ReusableCard(colour: cardColour)),
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

class ReusableCard extends StatelessWidget {

  ReusableCard({@required this.colour, this.cardChild});

  final Color colour;
  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
       child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: colour));
  }
}
