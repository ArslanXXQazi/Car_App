import 'package:car_rental/controller/constant/linkers.dart';
import  'package:flutter/cupertino.dart';

class HomeNavView extends StatelessWidget {
   HomeNavView({super.key});
   final PageController pageController=PageController();
TextEditingController searchController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    final width=MediaQuery.sizeOf(context).width;
    final height=MediaQuery.sizeOf(context).height;
    return Scaffold(
      backgroundColor: Colors.white,
      //==========================================================>>AppBar
      appBar: AppBar(
        backgroundColor: Colors.white,
        leadingWidth: width*.14,
        leading: Padding(
          padding:  EdgeInsets.only(left: width*.03),
          child: GestureDetector(
            onTap: ()
            {
              Navigator.push(context, CupertinoPageRoute(builder: (context)=>ProfileView()));
            },
            child: CircleAvatar(
              backgroundColor: Colors.grey,
              backgroundImage: AssetImage(Appimages.boy),
            ),
          ),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          CustomText(text: 'Good Morning'),
          SizedBox(height: height*.003,),
          CustomTextBold(text: 'Arslan Qazi',fontsize: 18,),
        ],),
        actions: [
        CircleAvatar(
          radius: width*.04,
         backgroundColor: Colors.white,
          child: ImageIcon(AssetImage(Appimages.bell,),color: Colors.black,),
        ),
          SizedBox(width: width*.03,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width*.04),
            child: GestureDetector(
              onTap: (){
                Navigator.push(context, CupertinoPageRoute(builder: (context)=>WishListView()));
              },
              child: CircleAvatar(
                radius: width*.04,
                backgroundColor: Colors.white,
                child: ImageIcon(AssetImage(Appimages.heart,),color: Colors.black,),
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: width*.025,),
        child: SingleChildScrollView(
          child: Column(children: [
            //==========================================================>> Search Text field
            CustomTextFeild(hintText: 'Search', controller: searchController,icon: Icons.search,borderRadius: 10,),
            //==========================================================>>Special Offer and see all
            Padding(
              padding:  EdgeInsets.symmetric(vertical: height*.007),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomTextBold(text: "Special Offer",fontsize: 18,),
                 TextButton(onPressed: (){
                   Navigator.push(context, CupertinoPageRoute(builder: (context)=>SpecialOfferView()));

                 }, child:  CustomText(text: 'See all')),
                ],
              ),
            ),
            //==========================================================>> Container for weekly deals
            Stack(
              children: [
                Container(
                  height: height * 0.25,
                  child: PageView(
                    scrollDirection: Axis.horizontal,
                    controller: pageController,
                    children: [
                    DiscountContainer(image: Appimages.car11),
                    DiscountContainer(image: Appimages.car10),
                    DiscountContainer(image: Appimages.car7),
                    DiscountContainer(image: Appimages.car5),
                    DiscountContainer(image: Appimages.car9),
                    DiscountContainer(image: Appimages.car6),
                    DiscountContainer(image: Appimages.car8),
                    DiscountContainer(image: Appimages.car12),
                    ],
                  ),
                ),
                Positioned(
                  left: width*.35,top: height*.22,
                  child: SmoothPageIndicator(
                      controller:pageController ,  // PageController
                      count:  8,
                      axisDirection: Axis.horizontal,
                      effect: WormEffect(
                        spacing: 10,
                        dotWidth:  10.0,
                        dotHeight:  10.0,
                        dotColor: Colors.grey,
                        activeDotColor: Colors.black,
                      )
                  ),
                ),
              ],
            ),
            //==========================================================>>  Row for Cars logos
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding:  EdgeInsets.symmetric(vertical: height*.03),
                child: Row(children: [
                  CustomLogo(logo: Appimages.mercedes, name: 'Mercedes'),
                  CustomLogo(logo: Appimages.tesla, name: 'Tesla'),
                  CustomLogo(logo: Appimages.bmw, name: 'BMW'),
                  CustomLogo(logo: Appimages.honda, name: 'Honda'),
                  CustomLogo(logo: Appimages.toyota, name: 'Toyota'),
                  CustomLogo(logo: Appimages.volvo, name: 'Volvo'),
                  CustomLogo(logo: Appimages.hyundai, name: 'Hyundai'),
                  CustomLogo(logo: Appimages.more, name: 'More'),
                ],),
              ),
            ),
            //==========================================================>> Row for Top Deals see all
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomTextBold(text: "Top Deals",fontsize: 18,),
                TextButton(onPressed: (){
                  Navigator.push(context, CupertinoPageRoute(builder: (context)=>TopDealsView()));
                }, child:  CustomText(text: 'See all')),
              ],
            ),
            //==========================================================>> Row for all and cars name
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding:  EdgeInsets.symmetric(vertical: height*.01),
                child: Row(children: [
                  NameContainer(name: 'All',width: width*.15,),
                  NameContainer(name: 'Mercedes',width: width*.23,),
                  NameContainer(name: 'Tesla',width: width*.17,),
                  NameContainer(name: 'BMW',width: width*.15,),
                  NameContainer(name: 'Honda',width: width*.18,),
                  NameContainer(name: 'Toyota',width: width*.2,),
                  NameContainer(name: 'Volvo',width: width*.17,),
                  NameContainer(name: 'Hyundai',width: width*.22,),
                  NameContainer(name: 'More',width: width*.17,),
                ],),
              ),
            ),
            //==========================================================>> Row for cars
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               CarsContainer(
                   image: Appimages.car10,
                   name: 'Tesla Series',
                   price: '190,000',
                 color: Colors.grey.shade200,
               ),
               CarsContainer(
                   image: Appimages.car11,
                   name: 'Mercedes series',
                   price: '190,000',
                 color: Colors.grey.shade200,
               ),
           ],),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CarsContainer(
                    image: Appimages.car8,
                    name: 'Honda Series',
                    price: '160,000',
                  color: Colors.grey.shade200,
                ),
                CarsContainer(
                    image: Appimages.car7,
                    name: 'Toyota Series',
                    price: '190,000',
                  color: Colors.grey.shade200,
                ),
              ],),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CarsContainer(
                    image: Appimages.car5,
                    name: 'Hyundai Series',
                    price: '260,000',
                  color: Colors.grey.shade200,
                ),
                CarsContainer(
                    image: Appimages.car9,
                    name: 'BMW Series',
                    price: '190,000',
                  color: Colors.grey.shade200,
                ),
              ],),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CarsContainer(
                  image: Appimages.car6,
                  name: 'Hyundai Series',
                  price: '260,000',
                  color: Colors.grey.shade200,
                ),
                CarsContainer(
                  image: Appimages.car12,
                  name: 'BMW Series',
                  price: '190,000',
                  color: Colors.grey.shade200,
                ),
              ],),
          ],),
        ),
      ),
    );
  }
}
