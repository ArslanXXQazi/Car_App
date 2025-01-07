import 'package:car_rental/controller/constant/linkers.dart';
import 'package:flutter/cupertino.dart';
class SignUpView extends StatelessWidget {
  SignUpView({super.key});
  TextEditingController mailController=TextEditingController();
  TextEditingController passwordController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    final width=MediaQuery.sizeOf(context).width;
    final height=MediaQuery.sizeOf(context).height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(child:
      Padding(
        padding:  EdgeInsets.symmetric(horizontal: width*.04),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: height*0.14,
                width: width*.4,
                child:  Image(image: AssetImage(Appimages.signinlogo),fit: BoxFit.cover,),
              ),
              Padding(
                padding:  EdgeInsets.only(top: height*.02),
                child: CustomTextBold(text: 'Create your account',fontsize: 25,),
              ),
              CustomTextFeild(hintText: "Email", controller: mailController),
              CustomTextFeildPassword(hintText: 'Password', controller: passwordController),
              Padding(
                padding: EdgeInsets.symmetric(vertical: height*.015),
                child: CustomButton(text: "Sign Up", onPressed: (){
                  Navigator.push(context, CupertinoPageRoute(builder: (context)=>SigninView()));
                }),
              ),
              Padding(
                padding:  EdgeInsets.symmetric(vertical: height*.04),
                child: Row(
                  children: [
                    Container(
                      height: height*.001,
                      width: width*.28,
                      color: Colors.grey.shade300,
                    ),
                    CustomText(text: ' Or continue with ',color: Colors.grey,),
                    Container(
                      height: height*.001,
                      width: width*.28,
                      color: Colors.grey.shade300,
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GoogleButton(image: Appimages.facebook),
                  GoogleButton(image: Appimages.google),
                  GoogleButton(image: Appimages.apple),

                ],),
              Padding(
                padding:  EdgeInsets.only(top: height*.03),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomText(text: 'Already have account?',color: Colors.grey,),
                    TextButton(onPressed: (){
                      Navigator.push(context, CupertinoPageRoute(builder: (context)=>SigninView()));
                    }, child: CustomText(text: 'Sign in',fontWeight: FontWeight.bold,))
                  ],),
              )
            ],),
        ),
      ),),
    );
  }
}
