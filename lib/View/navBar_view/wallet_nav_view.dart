import 'package:car_rental/View/home_view/transaction_history.dart';
import 'package:car_rental/controller/components/custom_list.dart';
import 'package:car_rental/controller/constant/linkers.dart';
import 'package:flutter/cupertino.dart';

class WalletNavView extends StatelessWidget {
  const WalletNavView({super.key});

  @override
  Widget build(BuildContext context) {
    final width=MediaQuery.sizeOf(context).width;
    final height=MediaQuery.sizeOf(context).height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading:IconButton(onPressed: (){Navigator.pop(context);}, icon:  Icon(Icons.arrow_back)),
        title: CustomTextBold(text: 'My E-Wallet'),
        actions: [
          Icon(Icons.search),
          SizedBox(width: width*.05),
          Padding(
            padding:  EdgeInsets.only(right: width*.04),
            child: Icon(Icons.message),
          ),
        ],
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding:  EdgeInsets.symmetric(horizontal: width*.024),
            child: Column(
              children: [
              Container(
                width: width*.95,
                height: height*.25,
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    Colors.greenAccent,
                    Colors.lightBlue,
                    Colors.orangeAccent,
                    Colors.red.shade500,

                  ],


                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding:  EdgeInsets.symmetric(horizontal: width*.04,),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      CustomTextBold(text: 'Arslan Qazi',fontsize: 20,color: Colors.white,),
                      CustomTextBold(text: "Visa",color: Colors.white,fontsize: 25,)
                    ],),
                    CustomTextBold(text: '1121 *** ** *** 5555',color: Colors.white,),
                      Padding(
                        padding: EdgeInsets.only(top: height*.025),
                        child: CustomText(text: 'Your Blance',color: Colors.white,fontsize: 20,),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                        CustomTextBold(text: '\$12,500',fontsize: 35,color: Colors.white,),
                        ElevatedButton(onPressed: (){},
                            child: Row(children: [
                      //    Icon(Icons.incomplete_circle_rounded),
                          CustomTextBold(text: 'Top Up',fontsize: 18,),],),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white
                          )
                        )
                      ],)
                  ],),
                ),
              ),
                Padding(
                  padding:  EdgeInsets.only(top: height*.015),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomTextBold(text: "Transaction History",fontsize: 18,),
                     TextButton(onPressed: (){
                       Navigator.push(context, CupertinoPageRoute(builder: (context)=>TransactionHistory()));
                     }, child:  CustomText(text: "See All"),)
                    ],
                  ),
                ),
               CustomTransactionList(image: Appimages.bmwlogo, title: "BMW Store",price: '200,345',),
               CustomTransactionList(image: Appimages.nessanlogo, title: "Nessan Store",order: 'Top up',color: Colors.green,),
               CustomTransactionList(image: Appimages.teslalogo, title: "Tesla Store"),
               CustomTransactionList(image: Appimages.volvologo, title: "Volvo Store",order: 'Top up',color: Colors.red,),
               CustomTransactionList(image: Appimages.hondalog, title: "Honda Store",price: '100,732',),
                CustomTransactionList(image: Appimages.bmwlogo, title: "BMW Store",order: 'Top up',color: Colors.green,),
                CustomTransactionList(image: Appimages.nessanlogo, title: "Nessan Store",order: 'Top up',color: Colors.red,),
                CustomTransactionList(image: Appimages.teslalogo, title: "Tesla Store",order: 'Top up',color: Colors.green,),
                CustomTransactionList(image: Appimages.volvologo, title: "Volvo Store"),
                CustomTransactionList(image: Appimages.hondalog, title: "Honda Store",order: 'Top up',color: Colors.red,),

            ],),
          ),
        ),
      ),
    );
  }
}
