import 'package:car_rental/controller/constant/images.dart';
import 'package:flutter/material.dart';
class GoogleButton extends StatelessWidget {
  String image;
   GoogleButton({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    final width=MediaQuery.sizeOf(context).width;
    final height=MediaQuery.sizeOf(context).height;
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: width*.01),
      child: Container(
          height: height*.07,
          width:  width *.2,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: Colors.black)
          ),
          child:Center(
            child: CircleAvatar(
              backgroundColor: Colors.white,
              child: Image(image: AssetImage(image),fit: BoxFit.cover,),
            ),
          )
      ),
    );
  }
}
