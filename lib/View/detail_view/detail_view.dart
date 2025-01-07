import 'package:car_rental/controller/components/gallery_container.dart';
import 'package:car_rental/controller/constant/linkers.dart';

class DetailView extends StatelessWidget {
  String image;
  String name;
  String price;

   DetailView({super.key,
     required this.image,
     required this.name,
     required this.price,
   });

  @override
  Widget build(BuildContext context) {
    final width=MediaQuery.sizeOf(context).width;
    final height=MediaQuery.sizeOf(context).height;
    final PageController pageController=PageController();
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: [
          CircleAvatar(
            radius: width*.04,
            backgroundColor: Colors.white,
            child: ImageIcon(AssetImage(Appimages.heart,),color: Colors.black,),
          ),
        ],
      ),
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: width*.03),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Stack(children: [
              Container(
                height: height*.4,
                child: PageView(
                  controller: pageController,
                  scrollDirection: Axis.horizontal,
                  children: [
                  Container(
                   child: Image(image: AssetImage(image)),
                  ),
                    Container(
                      child: Image(image: AssetImage(image)),
                    ),
                    Container(
                      child: Image(image: AssetImage(image)),
                    ),
                ],),
              ),
              Positioned(
                left: width*.45,top: height*.37,
                child: SmoothPageIndicator(
                    controller:pageController ,  // PageController
                    count:  3,
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
            ],),
            CustomTextBold(text: name),
              Padding(
                padding:  EdgeInsets.symmetric(vertical: height*.03),
                child: Row(children: [
                  Container(
                    height: height*.035,
                    width: width*.13,
                    child: Center(child: CustomText(text: "Used",fontsize: 14,),),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal: width*.02),
                    child: Icon(Icons.star),
                  ),
                  CustomText(text: '4.9 '),
                  CustomText(text: '(86 Views)'),
                ],),
              ),
              CustomTextBold(text: "Description",fontsize: 18,),
              Padding(
                padding: EdgeInsets.symmetric( vertical: height*.02),
                child: CustomText(text: 'Best Flutter kit is the ultimate library fo flutter\n'
                    'UI Templatescombined into a high Quality of fluttter\nUI Kit View More...',color: Colors.grey,fontsize: 15,),
              ),
              CustomTextBold(text: "Gallery Photo",fontsize: 18,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding:  EdgeInsets.symmetric(vertical: height*.03),
                  child: Row(children: [
                   GalleryContainer(image: Appimages.car11),
                   GalleryContainer(image: Appimages.car7),
                   GalleryContainer(image: Appimages.car5),
                   GalleryContainer(image: Appimages.car9),
                   GalleryContainer(image: Appimages.car12),
                   GalleryContainer(image: Appimages.car6),
                   GalleryContainer(image: Appimages.car8),
                   GalleryContainer(image: Appimages.car10),
                  ],),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                 Row(children: [
                   CircleAvatar(
                     radius: width*.06,
                     backgroundImage: AssetImage(Appimages.bmwlogo),
                   ),

                   Padding(
                     padding:  EdgeInsets.only(left: width*.03),
                     child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         CustomTextBold(text: "BMW Store",fontsize: 18,),
                         CustomText(text: "Official account of BMW ",color: Colors.grey,),
                       ],
                     ),
                   ),
                 ],),
                 Row(children: [
                   Padding(
                     padding:  EdgeInsets.only(right: width*.06),
                     child: Icon(Icons.message_outlined),
                   ),
                   Icon(Icons.phone),
                 ],)
                ],),
              Padding(
                padding:  EdgeInsets.symmetric(vertical: height*.03),
                child: Row(
                  children: [
                    Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(text: 'Price',color: Colors.grey,),
                        CustomTextBold(text: price,fontsize: 18,),
                      ],
                    ),
                   Padding(
                     padding:  EdgeInsets.only(left: width*.15),
                     child: ElevatedButton(
                       onPressed: (){},
                       child: CustomText(text: ' Make an offer ',color: Colors.white,),
                       style: ElevatedButton.styleFrom(
                         backgroundColor: Colors.black,
                         minimumSize: Size(width*.08, height*.05),
                       )
                     ),
                   ),
                  ],
                ),
              )
          ],),
        ),
      ),
    );
  }
}