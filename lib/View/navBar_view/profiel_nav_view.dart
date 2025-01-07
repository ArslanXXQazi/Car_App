import 'package:car_rental/controller/components/profile_list_tile.dart';
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
        child: SingleChildScrollView(
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
            SizedBox(height: height*.02,),
            ProfileListTile(iconData: Icons.person, text: "Edit Profile", ontap: (){}),
            ProfileListTile(iconData: Icons.location_on_outlined, text: "Address", ontap: (){}),
            ProfileListTile(iconData: Icons.notifications_active_outlined, text: "Notification", ontap: (){}),
            ProfileListTile(iconData: Icons.payment, text: "Payment", ontap: (){}),
            ProfileListTile(iconData: Icons.security, text: "Security", ontap: (){}),
            ProfileListTile(iconData: Icons.lock_open, text: "Privacy", ontap: (){}),
            ProfileListTile(iconData: Icons.help_center_outlined, text: "Help Support", ontap: (){}),
            ProfileListTile(iconData: Icons.person_add_alt_1_outlined, text: "Invite Friends", ontap: (){}),
            ProfileListTile(iconData: Icons.logout, text: "Log Out", ontap: (){}),
          ],),
        ),
      ),
    );
  }
}
