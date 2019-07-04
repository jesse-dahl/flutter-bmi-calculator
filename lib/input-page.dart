import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const bottomContainerHeight = 80.0;
const Color activeCardColour = Color(0xFF1D1E33);
const Color bottomContainerColour = Color(0xFFEB1555);

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
      body: Column (
        children: <Widget>[

          Expanded( 
            child: Row(
              children: <Widget>[

                Expanded(
                  child: ReusableCard(
                    colour: activeCardColour,
                    cardChild: IconContent(),
                  ),
                ),

                Expanded(
                  child: ReusableCard(colour: activeCardColour,),
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

class IconContent extends StatelessWidget {
  const IconContent({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(FontAwesomeIcons.mars, size: 80.0),
        SizedBox(height: 15.0,),
        Text(
          "MALE", 
          style: TextStyle(
            fontSize: 18.0, 
            color: Color(0xFF8D8E98),
          ),
        ),
      ],
    );
  }
}

class ReusableCard extends StatelessWidget {

  final Color colour;
  final Widget cardChild;

  ReusableCard({@required this.colour, this.cardChild});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10.0)
      ),
    );
  }
}