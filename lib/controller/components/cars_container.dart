import 'package:car_rental/controller/constant/linkers.dart';
import 'package:flutter/cupertino.dart';

class CarsContainer extends StatelessWidget {
  String image;
  String name;
  String price;
  Color color;
   CarsContainer({super.key,
     required this.image,
     required this.name,
     required this.price,
     this.color=Colors.white,
   });

  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.sizeOf(context).height;
    final width=MediaQuery.sizeOf(context).width;
    return Stack(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: height*.01),
          child: GestureDetector(
            onTap: (){
              Navigator.push(context, CupertinoPageRoute(builder: (context)=>DetailView(
                image: image,
                name: name,
                price: price,
              )));
            },
            child: Container(
              width: width*.46,
              height: height*.35,
              decoration:  BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  Container(
                    width: width*.46,
                    height: height*.19,
                    decoration:  BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(child: Image(image: AssetImage(image))),
                  ),
                  Padding(
                    padding:  EdgeInsets.only(left: width*.02),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: height*.015),
                          child: CustomTextBold(text: name,fontsize: 18,),
                        ),
                        Padding(
                          padding:  EdgeInsets.symmetric(vertical: height*.015),
                          child: Row(children: [
                            Icon(Icons.star_border,size: 20,),
                            CustomText(text: '4.5'),
                            CustomText(text: ' l '),
                            Container(
                              height: height*.035,
                              width: width*.13,
                              child: Center(child: CustomText(text: "Used",fontsize: 14,),),
                              decoration: BoxDecoration(
                                color: Colors.grey.shade400,
                                borderRadius: BorderRadius.circular(10),
                              ),
                            )
                          ],),
                        ),
                        CustomTextBold(text: '\$$price',fontsize: 18,)
                      ],),
                  )
                ],),
            ),
          ),
        ),
        Positioned(
          left: width*.38,top: height*.01,
          child: CircleAvatar(
            radius: width*.04,
            backgroundColor: Colors.grey.shade300,
            child: ImageIcon(AssetImage(Appimages.heart,),color: Colors.black,),
          ),
        ),
      ],
    );
  }
}
