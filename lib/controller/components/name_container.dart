import 'package:car_rental/controller/components/custom_text.dart';
import 'package:flutter/material.dart';

class NameContainer extends StatelessWidget {
  String name;
  double width;
   NameContainer({super.key,required this.name,required this.width});

  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.sizeOf(context).height;
    final widthh=MediaQuery.sizeOf(context).width;
    return Padding(
      padding:  EdgeInsets.only(right: widthh*.02),
      child: Container(
        height: height*.04,
        width: width,
        decoration: BoxDecoration(
          border:Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(child: CustomText(text: name),),
      ),
    );
  }
}
