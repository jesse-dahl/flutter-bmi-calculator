import 'package:flutter/material.dart';
import 'constants.dart';

class IconContent extends StatelessWidget {
  
  final String gender;
  final IconData icon;

  IconContent({this.gender, this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(icon, size: 80.0,),
        // Icon(FontAwesomeIcons.mars, size: 80.0),
        SizedBox(height: 15.0,),
        Text(
          gender, 
          style: labelTextStyle,
        ),
      ],
    );
  }
}

class RoundIconButton extends StatelessWidget {

  RoundIconButton({@required this.icon, @required this.onPressed});
  final IconData icon;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      elevation: 6.0,
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
      child: Icon(icon),
    );
  }
}