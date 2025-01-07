import 'package:car_rental/controller/constant/linkers.dart';

class OrderContainer extends StatelessWidget {
  String image;
  String name;
  String deliver;
  String price;
  String colorName;
  Color color;
   OrderContainer({super.key,
     required this.image,
     required this.name,
     this.color=Colors.blue,
     this.colorName='Blue',
     this.price='300,000',
     this.deliver="In Delivery"
   });

  @override
  Widget build(BuildContext context) {
    final width=MediaQuery.sizeOf(context).width;
    final height=MediaQuery.sizeOf(context).height;
    return Padding(
      padding:  EdgeInsets.symmetric(vertical: height*.00),
      child: Container(
        width: width*.97,
        height: height*.2,
        color: Colors.white,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: height*.015),
          child: Row(children: [
            Container(
              width: width*.29,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: width*.27,
                    height: height*.1,
                    child: Image(image: AssetImage(image)),
                  ),
                ],
              ),
            ),
            SizedBox(width: width*.05,),
            Container(
              width: width*.55,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomTextBold(text: name,fontsize: 17,),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: height*.015),
                    child: Row(children: [
                      Icon(Icons.circle,color:color,size: 20,),
                      Padding(
                        padding:  EdgeInsets.symmetric(horizontal: width*.02),
                        child: CustomText(text: colorName,),
                      ),
                      Container(
                        height: height*.035,
                        width: width*.25,
                        child: Center(child: CustomText(text: deliver,fontsize: 14,),),
                        decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      )
                    ],),
                  ),
                  Row(
                    children: [
                      CustomTextBold(text: '\$$price',fontsize: 16,),
                      SizedBox(width: width*.04,),
                      ElevatedButton(
                          onPressed: (){},
                          child: CustomText(text: 'Track Order',color: Colors.white,),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black,
                            minimumSize: Size(width*.0, height*.05),
                          )
                      ),
                    ],
                  ),
                ],),
            ),
          ],),
        ),
      ),
    );
  }
}
