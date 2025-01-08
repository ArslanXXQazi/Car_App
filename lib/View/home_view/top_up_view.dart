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
      body: Column(children: [
        CustomText(text: 'Enter the amount of top up'),
      ],),
    );
  }
}
