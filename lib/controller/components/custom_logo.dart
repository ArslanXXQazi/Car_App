import 'package:car_rental/controller/components/custom_text.dart';
import 'package:car_rental/controller/constant/images.dart';
import 'package:flutter/material.dart';

class CustomLogo extends StatelessWidget {
  String logo;
  String name;
   CustomLogo({super.key,required this.logo,required this.name});

  @override
  Widget build(BuildContext context) {
    final width=MediaQuery.sizeOf(context).width;
    final height=MediaQuery.sizeOf(context).height;
    return  Padding(
      padding: EdgeInsets.only(right: width*.03),
      child: Column(
        children: [
          CircleAvatar(
            radius: width*.06,
            backgroundColor: Colors.grey.shade100,
            child: CircleAvatar(
              radius: width*.04,
              backgroundColor: Colors.grey.shade100,
              backgroundImage: AssetImage(logo),

            ),
          ),
          CustomText(text: name),
        ],
      ),
    );
  }
}
