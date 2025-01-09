import 'package:car_rental/controller/constant/linkers.dart';

class TopUpView extends StatelessWidget {
  const TopUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: CustomTextBold(text: 'Top Up E-Wallet'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(children: [
          CustomText(text: 'Enter the amount of top up'),
        Container(

          child: TextFormField(
            decoration: InputDecoration(
                border: InputBorder.none,
                // focusedBorder: OutlineInputBorder(
                //   borderRadius: BorderRadius.circular(20),
                //   borderSide: BorderSide(color: Colors.grey),
                // ),
                // enabledBorder: OutlineInputBorder(
                //   borderRadius: BorderRadius.circular(20),
                //   borderSide: BorderSide(color: Colors.grey),
                // )
            ),
          ),
        )
        ],),
      ),
    );
  }
}
