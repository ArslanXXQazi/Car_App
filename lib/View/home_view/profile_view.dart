import 'package:car_rental/controller/constant/linkers.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    final width=MediaQuery.sizeOf(context).width;
    final height=MediaQuery.sizeOf(context).height;
    TextEditingController fullNameController=TextEditingController();
    TextEditingController nickNameController=TextEditingController();
    TextEditingController dateofbController=TextEditingController();
    TextEditingController emailController=TextEditingController();
    TextEditingController phoneController=TextEditingController();
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: CustomTextBold(text: 'Fill Your Profile'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: width*.03,vertical: height*.03),
          child: Column(children: [
            //=========================================================>>>Profile circle
            Stack(
              children: [
                CircleAvatar(
                  radius: width*.15,
                  backgroundImage: AssetImage(Appimages.boy),
                ),
                Positioned(
                  left: width*.2,top: height*.094,
                  child: Container(
                    height: height*.032,
                    width: width*.085,
                    child: Center(child: Icon(Icons.drive_file_rename_outline_rounded,color: Colors.white,size: 20,),),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: height*.02,),
            //=========================================================>>>Text field
            CustomTextFeild(hintText: 'Full name', controller: fullNameController,icon: Icons.drive_file_rename_outline,),
            CustomTextFeild(hintText: 'Nickname', controller: nickNameController,icon: Icons.drive_file_rename_outline,),
            CustomTextFeild(hintText: 'Date of birth', controller: dateofbController,icon: Icons.date_range,),
            CustomTextFeild(hintText: 'Email', controller: emailController,icon: Icons.email),
            Padding(
              padding:  EdgeInsets.symmetric(vertical: height*.01),
              child: IntlPhoneField(
                initialValue: '+92',
                controller: phoneController,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey.shade100,
                  hintText: 'Phone number',
                 border: InputBorder.none,
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Colors.grey.shade100)
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Colors.grey.shade100)
                    )

                ),
              ),
            ),
            CustomButton(text: 'Continue', onPressed: (){})
          ],),
        ),
      ),
    );
  }
}
