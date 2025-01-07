import 'package:car_rental/controller/constant/linkers.dart';

class SpecialOfferView extends StatelessWidget {
  const SpecialOfferView({super.key});

  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.sizeOf(context).height;
    final width=MediaQuery.sizeOf(context).width;
    final PageController pageController=PageController();
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: CustomTextBold(text: "Special Offers"),
        centerTitle: true,
        actions: [
          Icon(Icons.more_horiz),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: width*.02),
          child: Column(children: [
            Padding(
            padding:  EdgeInsets.only(bottom: height*.02),
            child: Stack(
            children: [
            Container(
            height: height*.25,
              child: PageView(
                controller: pageController,
                scrollDirection: Axis.horizontal,
                children: [
               SpecialOfferContainer(image: Appimages.car7),
               SpecialOfferContainer(image: Appimages.car6),
               SpecialOfferContainer(image: Appimages.car7),
               SpecialOfferContainer(image: Appimages.car5),
               SpecialOfferContainer(image: Appimages.car10),
                ],
              ),
            ),
            Positioned(
              left: width*.39,top: height*.22,
              child: SmoothPageIndicator(
                  controller:pageController ,  // PageController
                  count:  5,
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
          ),
            Padding(
              padding:  EdgeInsets.only(bottom: height*.02),
              child: Stack(
                children: [
                  Container(
                    height: height*.25,
                    child: PageView(
                      controller: pageController,
                      scrollDirection: Axis.horizontal,
                      children: [
                        SpecialOfferContainer(image: Appimages.car8),
                        SpecialOfferContainer(image: Appimages.car9),
                        SpecialOfferContainer(image: Appimages.car7),
                        SpecialOfferContainer(image: Appimages.car8),
                        SpecialOfferContainer(image: Appimages.car5),
                      ],
                    ),
                  ),
                  Positioned(
                    left: width*.39,top: height*.22,
                    child: SmoothPageIndicator(
                        controller:pageController ,  // PageController
                        count:  5,
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
            ),
            Padding(
              padding:  EdgeInsets.only(bottom: height*.02),
              child: Stack(
                children: [
                  Container(
                    height: height*.25,
                    child: PageView(
                      controller: pageController,
                      scrollDirection: Axis.horizontal,
                      children: [
                        SpecialOfferContainer(image: Appimages.car11),
                        SpecialOfferContainer(image: Appimages.car8),
                        SpecialOfferContainer(image: Appimages.car9),
                        SpecialOfferContainer(image: Appimages.car5),
                        SpecialOfferContainer(image: Appimages.car10),
                      ],
                    ),
                  ),
                  Positioned(
                    left: width*.39,top: height*.22,
                    child: SmoothPageIndicator(
                        controller:pageController ,  // PageController
                        count:  5,
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
            ),
            Padding(
              padding:  EdgeInsets.only(bottom: height*.02),
              child: Stack(
                children: [
                  Container(
                    height: height*.25,
                    child: PageView(
                      controller: pageController,
                      scrollDirection: Axis.horizontal,
                      children: [
                        SpecialOfferContainer(image: Appimages.car12),
                        SpecialOfferContainer(image: Appimages.car6),
                        SpecialOfferContainer(image: Appimages.car7),
                        SpecialOfferContainer(image: Appimages.car5),
                        SpecialOfferContainer(image: Appimages.car10),
                      ],
                    ),
                  ),
                  Positioned(
                    left: width*.39,top: height*.22,
                    child: SmoothPageIndicator(
                        controller:pageController ,  // PageController
                        count:  5,
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
            ),
            Padding(
              padding:  EdgeInsets.only(bottom: height*.02),
              child: Stack(
                children: [
                  Container(
                    height: height*.25,
                    child: PageView(
                      controller: pageController,
                      scrollDirection: Axis.horizontal,
                      children: [
                        SpecialOfferContainer(image: Appimages.car5),
                        SpecialOfferContainer(image: Appimages.car6),
                        SpecialOfferContainer(image: Appimages.car7),
                        SpecialOfferContainer(image: Appimages.car5),
                        SpecialOfferContainer(image: Appimages.car10),
                      ],
                    ),
                  ),
                  Positioned(
                    left: width*.39,top: height*.22,
                    child: SmoothPageIndicator(
                        controller:pageController ,  // PageController
                        count:  5,
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
            ),

          ],),
        ),
      ),
    );
  }
}
