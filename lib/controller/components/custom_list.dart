import 'package:car_rental/controller/constant/linkers.dart';

class CustomList extends StatelessWidget {
  String image;
  String title;
  String subTitle;
  CustomList({super.key,
    required this.image,
    required this.title,
    this.subTitle='Hello Wellcome to BMW',
  });

  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.sizeOf(context).height;
    final width =MediaQuery.sizeOf(context).width;
    return   Padding(
      padding:  EdgeInsets.symmetric(vertical: height*.015,horizontal: width*.03),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(children: [
            CircleAvatar(
              radius: width*.06,
              backgroundImage: AssetImage(image),
            ),
            SizedBox(width: width*.03,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomTextBold(text: title,fontsize: 18,),
                SizedBox(height: height*.004,),
                CustomText(text: subTitle,color: Colors.grey.shade700,),
              ],),
          ],),
          Column(
            children: [
              CircleAvatar(
                radius: width*.025,
                backgroundColor: Colors.black,
                child: Center(child: CustomText(text: '2',color: Colors.white,fontsize: 12,)),
              ),
              SizedBox(height: height*.01,),
              CustomText(text: '09:10'),
            ],)
        ],),
    );
  }
}


class CustomCallsListTile extends StatelessWidget {
  String image;
  String title;
  String subTitle;
  IconData icon;
  Color color;
   CustomCallsListTile({super.key,
     required this.image,
     required this.title,
     this.subTitle='Incoming | Dec 19 2024',
     this.icon=Icons.phone_callback_rounded,
     this.color=Colors.green

   });

  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.sizeOf(context).height;
    final width =MediaQuery.sizeOf(context).width;
    return Padding(
      padding:  EdgeInsets.symmetric(vertical: height*.015,horizontal: width*.03),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(children: [
            CircleAvatar(
              radius: width*.06,
              backgroundColor: Colors.white,
              backgroundImage: AssetImage(image),
            ),
            SizedBox(width: width*.03,),
            Column(children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomTextBold(text: " Nissan Offcial",fontsize: 18,),
                  SizedBox(height: height*.005,),
                  Row(
                    children: [
                      Icon(icon,color: color,size: 20,),
                      CustomText(text:' $subTitle',color: Colors.grey.shade700,),
                    ],
                  ),
                ],
              ),
            ],)
          ],),
         Icon(Icons.phone,color: Colors.grey,),
        ],),
    );
  }
}

class CustomTransactionList extends StatelessWidget {
  String image;
   String title;
   String subTitle;
   String order;
   String price;
   Color  color;
  CustomTransactionList({super.key,
    required this.image,
     required this.title,
     this.subTitle='Incoming | Dec 20 2024',
    this.order='Order',
    this.price='300,000',
    this.color=Colors.blue,
  });

  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.sizeOf(context).height;
    final width =MediaQuery.sizeOf(context).width;
    return   Padding(
      padding:  EdgeInsets.symmetric(vertical: height*.015,horizontal: width*.03),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(children: [
            CircleAvatar(
              radius: width*.06,
            backgroundColor: Colors.white,
              backgroundImage: AssetImage(image),
            ),
            SizedBox(width: width*.03,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomTextBold(text: title,fontsize: 18,),
                SizedBox(height: height*.004,),
                CustomText(text: subTitle,color: Colors.grey.shade700,),
              ],),
          ],),
          Column(
            children: [
              CustomTextBold(text: '\$$price',fontsize: 18,),
              SizedBox(height: height*.01,),
              Row(
                children: [
                  CustomText(text: order),
                  Icon(Icons.check_box,color: color,size: 20,),
                ],
              ),
            ],)
        ],),
    );
  }
}
