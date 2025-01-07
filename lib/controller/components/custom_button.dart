import 'package:car_rental/controller/components/custom_text.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  String text;
  VoidCallback onPressed;
   CustomButton({super.key,
     required this.text,
     required this.onPressed,
   });

  @override
  Widget build(BuildContext context) {
    final width=MediaQuery.sizeOf(context).width;
    final height=MediaQuery.sizeOf(context).height;
    return  ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.black,
          minimumSize: Size(width*.9, height*.07),
        ),
        onPressed:onPressed,
        child: CustomTextBold(text: text,color: Colors.white,));
  }
}
