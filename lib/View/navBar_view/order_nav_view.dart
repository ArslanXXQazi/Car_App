

import 'package:car_rental/controller/components/order_container.dart';
import 'package:car_rental/controller/constant/linkers.dart';

class OrderNavView extends StatelessWidget {
  const OrderNavView({super.key});

  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.sizeOf(context).height;
    final width =MediaQuery.sizeOf(context).width;
    return DefaultTabController(
      initialIndex: 0,
      length: 2,
      child: Scaffold(
       backgroundColor: Colors.white,
        appBar: AppBar(
          leading:IconButton(onPressed: (){Navigator.pop(context);}, icon:  Icon(Icons.arrow_back)),
          backgroundColor: Colors.white,
          title: CustomTextBold(text: 'My Order'),
          actions: [
            Icon(Icons.search),
            SizedBox(width: width*.05),
            Padding(
              padding:  EdgeInsets.only(right: width*.04),
              child: Icon(Icons.message),
            ),
          ],
          bottom: TabBar(tabs: [
            CustomTextBold(text: 'Acitive',fontsize: 16,),
            CustomTextBold(text: 'Completed',fontsize: 16,),
          ],
            indicatorColor: Colors.black,
            indicatorSize: TabBarIndicatorSize.tab,
          ),
        ),
        body: TabBarView(children: [
          SingleChildScrollView(
            child: Column(children: [
              OrderContainer(image: Appimages.car5, name: "Nissan Offcial"),
              OrderContainer(image: Appimages.car6, name: "Tesla Store",color: Colors.green,colorName: 'Green',),
              OrderContainer(image: Appimages.car7, name: "Toyota Offcial",color: Colors.red,colorName: 'Red',),
              OrderContainer(image: Appimages.car9, name: "Hyundai Offcial",color: Colors.yellow,colorName: 'Yellow',),
              OrderContainer(image: Appimages.car10, name: "BMW Store",color: Colors.purpleAccent,colorName: 'Purple',),
            ],),
          ),
          SingleChildScrollView(
            child: Column(children: [
              OrderContainer(image: Appimages.car5, name: "Nissan Offcial",deliver: 'Completed',),
              OrderContainer(image: Appimages.car6, name: "Tesla Store",color: Colors.green,colorName: 'Green',deliver: 'Completed',),
              OrderContainer(image: Appimages.car7, name: "Toyota Offcial",color: Colors.red,colorName: 'Red',deliver: 'Completed',),
              OrderContainer(image: Appimages.car9, name: "Hyundai Offcial",color: Colors.yellow,colorName: 'Yellow',deliver: 'Completed',),
              OrderContainer(image: Appimages.car10, name: "BMW Store",color: Colors.purpleAccent,colorName: 'Purple',deliver: 'Completed',),
            ],),
          ),
        ]),
      ),
    );
  }
}
