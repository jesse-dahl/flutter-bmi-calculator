import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';

const bottomContainerHeight = 80.0;
const Color activeCardColour = Color(0xFF1D1E33);
const Color inactiveCardColour = Color(0xFF111328);
const Color bottomContainerColour = Color(0xFFEB1555);

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column (
        children: <Widget>[

          Expanded( 
            child: Row(
              children: <Widget>[

                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    colour: selectedGender == Gender.male ? activeCardColour : inactiveCardColour,
                    cardChild: IconContent(gender: "MALE", icon: FontAwesomeIcons.mars),
                  ),
                ),

                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    colour: selectedGender == Gender.female ? activeCardColour : inactiveCardColour,
                    cardChild: IconContent(gender: "FEMALE", icon: FontAwesomeIcons.venus),
                  ),
                ),

              ],
            ),
          ),

          Expanded( 
            child: ReusableCard(colour: activeCardColour,),
          ),

          Expanded( 
            child: Row(
              children: <Widget>[

                Expanded(
                  child: ReusableCard(colour: activeCardColour,),
                ),

                Expanded(
                  child: ReusableCard(colour: activeCardColour,),
                ),

              ],
            ),
          ),
          Container(
            color: bottomContainerColour,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: bottomContainerHeight,
          ),
        ],
      ),
    );
  }
}
