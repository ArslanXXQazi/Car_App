import 'package:car_rental/controller/constant/linkers.dart';

class ProfileListTile extends StatelessWidget {
  IconData iconData;
  String   text;
  VoidCallback ontap;
   ProfileListTile({super.key,
     required this.iconData,
     required this.text,
     required this.ontap
   });

  @override
  Widget build(BuildContext context) {
    return   ListTile(
      onTap: ontap,
      leading: Icon(iconData),
      title: CustomTextBold(text: text,fontsize: 18,),
      trailing: Icon(Icons.arrow_forward_ios,size: 20,),
    );
  }
}
