

import 'package:car_rental/controller/constant/linkers.dart';
import 'package:flutter/cupertino.dart';

class OnBordingView extends StatefulWidget {
  const OnBordingView({super.key});

  @override
  State<OnBordingView> createState() => _OnBordingViewState();
}

class _OnBordingViewState extends State<OnBordingView> {
  PageController _pageController=PageController();
  int _currentPage=0;

  void _OnPage(int page)
  {
    setState(() {
      _currentPage=page;
    });
  }


  void _NextPage()
  {
    if(_currentPage<2)
      {
      _pageController.animateToPage(_currentPage+1,
          duration: Duration(milliseconds: 300),
          curve: Curves.easeIn);
      }
  }

  @override
  Widget build(BuildContext context) {
    final width=MediaQuery.sizeOf(context).width;
    final height=MediaQuery.sizeOf(context).height;
    return Scaffold(
      backgroundColor: Colors.white,
     floatingActionButton: Padding(
       padding:  EdgeInsets.only(top:height*.06 ),
       child: Column(children: [
         TextButton(onPressed: (){
           Navigator.push(context, CupertinoPageRoute(builder: (context)=>SigninView()));
         }, child:CustomText(text: 'Skip',fontsize: 20,)),
       ],),
     ),
      body: PageView(
        onPageChanged: _OnPage,
        controller: _pageController,
        children: [
          pageBuild(Appimages.car11, 'The Best Car In your\n  hands with carea'),
          pageBuild(Appimages.car7, 'The Best Car In your\n  hands with carea'),
          pageBuild(Appimages.car10, 'The Best Car In your\n  hands with carea'),

        ],
      ),
    );
  }
  Widget pageBuild(String image,String text)
  {
    final width=MediaQuery.sizeOf(context).width;
    final height=MediaQuery.sizeOf(context).height;
    return Center(
      child: Padding(
        padding:  EdgeInsets.symmetric(horizontal: width*.01),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Container(
            width: width*1,
            height: height*.4,
            child: Image(image: AssetImage(image)),
          ),
          CustomText(text: text,fontsize: 30,),
            Padding(
              padding:  EdgeInsets.only(top: height*.12),
              child: SmoothPageIndicator(
                  controller: _pageController,  // PageController
                  count:  3,
                axisDirection: Axis.horizontal,
                effect: WormEffect(
                  spacing: 16,
                  dotWidth:  10.0,
                  dotHeight:  10.0,
                  dotColor: Colors.grey,
                  activeDotColor: Colors.black,
                )
              ),
            ),
            Padding(
              padding:  EdgeInsets.only(top: height*.05),
              child: _currentPage<2?
              CustomButton(text: 'Next', onPressed: (){_NextPage();}):
             CustomButton(text: 'Get Started', onPressed: (){
               Navigator.push(context, CupertinoPageRoute(builder: (context)=>SigninView()));
             })
            ),
        ],),
      ),
    );
  }
}
