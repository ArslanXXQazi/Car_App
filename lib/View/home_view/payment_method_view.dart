import 'package:car_rental/controller/components/custom_list.dart';
import 'package:car_rental/controller/constant/linkers.dart';

class PaymentMethodView extends StatelessWidget {
  const PaymentMethodView({super.key});

  @override
  Widget build(BuildContext context) {
    final width=MediaQuery.sizeOf(context).width;
    final height=MediaQuery.sizeOf(context).height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: CustomTextBold(text: 'Top Up E-Wallet'),
        centerTitle: true,
      ),
      body: Column(

        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
      Padding(
        padding:  EdgeInsets.symmetric(horizontal: width*.02,),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: height*.03),
            child: CustomText(text: '    Select the top up method you want to use.',color: Colors.grey,),
          ),
          PaymentListTile(text: 'Apple Pay', image: Appimages.apple),
          PaymentListTile(text: 'Google Pay', image: Appimages.google),
          PaymentListTile(text: 'My Wallet', image: Appimages.wallet),
          PaymentListTile(text: 'Paypal', image: Appimages.paypal),
          PaymentListTile(text: '**** **** **** ****4656', image: Appimages.mastercard),
        ],),
      ),
          Padding(
            padding:  EdgeInsets.only(bottom: height*.01),
            child: CustomButton(text: 'Continue', onPressed: (){}),
          ),
      ],),
    );
  }
}
