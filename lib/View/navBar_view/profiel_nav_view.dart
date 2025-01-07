import 'package:car_rental/controller/constant/linkers.dart';

class ProfileNavView extends StatelessWidget {
  const ProfileNavView({super.key});

  @override
  Widget build(BuildContext context) {
    final width=MediaQuery.sizeOf(context).width;
    final height=MediaQuery.sizeOf(context).height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: IconButton(onPressed: (){Navigator.pop(context);}, icon: Icon(Icons.arrow_back),),
        title: CustomTextBold(text: "Profile"),
        actions: [
          Icon(Icons.message),
        ],
      ),
      body: Center(
        child: Column(children: [
          CircleAvatar(
            radius: width*.17,
            backgroundColor: Colors.grey,
          ),
          Padding(
            padding:  EdgeInsets.only(top: height*.02),
            child: CustomTextBold(text: "Arslan Qazi"),
          ),
          CustomText(text: "+92 34834 24529"),
          Padding(
            padding:  EdgeInsets.only(top: height*.05),
            child: Container(
              height: height*.003,
              width: double.infinity,
              color: Colors.grey,
            ),
          ),
        
        ],),
      ),
    );
  }
}
