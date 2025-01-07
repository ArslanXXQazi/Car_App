import 'package:car_rental/controller/components/custom_list.dart';
import 'package:car_rental/controller/constant/linkers.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: CustomTextBold(text: "Transaction History"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(children: [
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
    );
  }
}
