import 'package:car_rental/View/home_view/top_deals_view.dart';
import 'package:car_rental/controller/components/custom_text.dart';
import 'package:car_rental/controller/constant/images.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class DiscountContainer extends StatelessWidget {
  String image;
   DiscountContainer({super.key,required this.image});

  @override
  Widget build(BuildContext context) {
    final width=MediaQuery.sizeOf(context).width;
    final height=MediaQuery.sizeOf(context).height;
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: width*.01),
      child: GestureDetector(
        onTap: ()
        {
          Navigator.push(context, CupertinoPageRoute(builder: (context)=>TopDealsView()));
        },
        child: Container(
          width: width*.94,
          height: height*.25,
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(children: [
            Expanded(
                flex:40,
                child: Container(
                  child: Padding(
                    padding:  EdgeInsets.only(left: width*.03),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding:  EdgeInsets.symmetric(vertical: height*.03),
                          child: CustomTextBold(text: '20%',fontsize: 25,),
                        ),
                        Padding(
                          padding:  EdgeInsets.only(bottom: height*.03),
                          child: CustomTextBold(text: 'Weekly Deals!',fontsize: 17,),
                        ),
                        CustomText(text: 'Get a new car\ndiscount',color: Colors.grey.shade700,),
                        CustomText(text: 'only valid this',color: Colors.grey.shade700,),
                      ],),
                  ),
                )),
            Expanded(
                flex: 60,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: Image(image: AssetImage(image)),
                    ),
                  ],
                )),
          ],),
        ),
      ),
    );
  }
}
