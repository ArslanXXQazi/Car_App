import 'package:car_rental/controller/constant/linkers.dart';
import 'package:flutter/cupertino.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState(){
    super.initState();
    Future.delayed(Duration(seconds: 3),(){
      Navigator.push(context, CupertinoPageRoute(builder: (context)=>OnBordingView()));
    });
  }
  Widget build(BuildContext context) {
    final width=MediaQuery.sizeOf(context).width;
    final height=MediaQuery.sizeOf(context).height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
       child: Container(
         width: width*.3,
         height: height*.3,
         child: Image(image: AssetImage(Appimages.splashlogo2)),
       ),
      ),
    );
  }
}
