import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';

const bottomContainerheight = 80.0;
const reusableCardcolor = Color(0xFF1D1E33);
const bottomContainerColor = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Berechnung'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
              child: Row(
            children: <Widget>[
              Expanded(
                child: ReusableCard(
                  colour: reusableCardcolor,
                  cardChild:
                      IconContent(icon: FontAwesomeIcons.mars, label: 'MANN'),
                ),
              ),
              Expanded(
                child: ReusableCard(
                  colour: reusableCardcolor,
                  cardChild:
                      IconContent(icon: FontAwesomeIcons.venus, label: 'FRAU'),
                ),
              ),
            ],
          )),
          Expanded(
            child: ReusableCard(colour: reusableCardcolor),
          ),
          Expanded(
              child: Row(
            children: <Widget>[
              Expanded(
                child: ReusableCard(colour: reusableCardcolor),
              ),
              Expanded(
                child: ReusableCard(colour: reusableCardcolor),
              ),
            ],
          )),
          Container(
            color: bottomContainerColor,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: bottomContainerheight,
          )
        ],
      ),
    );
  }
}
