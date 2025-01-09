import 'package:car_rental/controller/components/topup_container.dart';
import 'package:car_rental/controller/constant/linkers.dart';

class TopUpView extends StatelessWidget {
  TopUpView({super.key});
TextEditingController topupController=TextEditingController(text: '00');
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
      body: Center(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: width*.04,vertical: height*.01),
          child: Column(children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: height*.03),
              child: CustomText(text: 'Enter the amount of top up',fontWeight: FontWeight.bold,),
            ),
          TextFormField(
            controller: topupController,
            decoration: InputDecoration(
                border: InputBorder.none,
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(color: Colors.grey),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(color: Colors.grey),
                )
            ),
          ),
           Padding(
             padding:  EdgeInsets.only(top: height*.04),
             child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
              TopupContainer(price: "10.000"),
              TopupContainer(price: "50.000"),
              TopupContainer(price: "100.000"),
             ],),
           ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TopupContainer(price: "150.000"),
                TopupContainer(price: "200.000"),
                TopupContainer(price: "250.000"),
              ],),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TopupContainer(price: "300.000"),
                TopupContainer(price: "350.000"),
                TopupContainer(price: "400.000"),
              ],),
            Padding(
              padding: EdgeInsets.only(top: height*.02),
              child: CustomButton(text: 'Continue', onPressed: (){}),
            ),
          ],),
        ),
      ),
    );
  }
}
