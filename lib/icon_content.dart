import 'package:flutter/material.dart';

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
          style: TextStyle(
            fontSize: 18.0, 
            color: Color(0xFF8D8E98),
          ),
        ),
      ],
    );
  }
}