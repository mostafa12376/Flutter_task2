import 'package:flutter/material.dart';


class ChoiceButton extends StatelessWidget {

  final String title;
  final IconData s1, s2;

  ChoiceButton(this.s1,this.title,this.s2);


  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
        child: TextButton(
        style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.white10),
    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
    RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(30),
    )
    )
    ),
    onPressed: () { },
    child: Padding(
    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 1),
    child: Row(
      children: [
        Expanded(
          flex: 2,
          child: Icon(s1, color: Colors.white,),
        ),
        Expanded(
            flex: 8,
            child: Text(title, style: TextStyle(
        color: Colors.white,
        fontSize: 18,
        fontWeight: FontWeight.w500,
      ),),),
        Expanded(
          flex: 2,
          child: Icon(s2, color: Colors.white,),
        )
      ]
    )
    )
    )
    );
  }

}