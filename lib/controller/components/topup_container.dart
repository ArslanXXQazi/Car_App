import 'package:car_rental/controller/constant/linkers.dart';

class TopupContainer extends StatelessWidget {
  String price;
   TopupContainer({super.key,required this.price});

  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.sizeOf(context).height;
    final width =MediaQuery.sizeOf(context).width;
    return  Padding(
      padding:  EdgeInsets.only(bottom: height*.02),
      child: Container(
        height:height*.05,
        width: width*.28,
        child: Center(child: CustomText(text: '\$ $price',fontWeight: FontWeight.bold,),),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.black),
        ),
      ),
    );
  }
}
