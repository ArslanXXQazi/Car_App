

import 'package:car_rental/controller/constant/linkers.dart';

class TopDealsView extends StatelessWidget {
  const TopDealsView({super.key});

  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.sizeOf(context).height;
    final width=MediaQuery.sizeOf(context).width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: CustomTextBold(text: "Top Deals"),
        centerTitle: true,
        actions: [
          Icon(Icons.search),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: width*.02),
          child: Column(children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding:  EdgeInsets.symmetric(vertical: height*.03),
                child: Row(children: [
                  CustomLogo(logo: Appimages.mercedes, name: 'Mercedes'),
                  CustomLogo(logo: Appimages.tesla, name: 'Tesla'),
                  CustomLogo(logo: Appimages.bmw, name: 'BMW'),
                  CustomLogo(logo: Appimages.honda, name: 'Honda'),
                  CustomLogo(logo: Appimages.toyota, name: 'Toyota'),
                  CustomLogo(logo: Appimages.volvo, name: 'Volvo'),
                  CustomLogo(logo: Appimages.hyundai, name: 'Hyundai'),
                  CustomLogo(logo: Appimages.more, name: 'More'),
                ],),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CarsContainer(
                    image: Appimages.car10,
                    name: 'Tesla Series',
                    price: '190,000',
                  color: Colors.grey.shade200,
                ),
                CarsContainer(
                    image: Appimages.car6,
                    name: 'Mercedes series',
                    price: '190,000',
                  color: Colors.grey.shade200,
                ),
              ],),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CarsContainer(
                    image: Appimages.car8,
                    name: 'Honda Series',
                    price: '160,000',
                  color: Colors.grey.shade200,
                ),
                CarsContainer(
                    image: Appimages.car7,
                    name: 'Toyota Series',
                    price: '190,000',
                  color: Colors.grey.shade200,
                ),
              ],),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CarsContainer(
                    image: Appimages.car9,
                    name: 'Hyundai Series',
                    price: '260,000',
                  color: Colors.grey.shade200,
                ),
                CarsContainer(
                    image: Appimages.car5,
                    name: 'BMW Series',
                    price: '190,000',
                  color: Colors.grey.shade200,
                ),
              ],),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CarsContainer(
                    image: Appimages.car10,
                    name: 'Tesla Series',
                    price: '190,000',
                  color: Colors.grey.shade200,
                ),
                CarsContainer(
                    image: Appimages.car6,
                    name: 'Mercedes series',
                    price: '190,000',
                  color: Colors.grey.shade200,
                ),
              ],),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CarsContainer(
                    image: Appimages.car8,
                    name: 'Honda Series',
                    price: '160,000',
                  color: Colors.grey.shade200,
                ),
                CarsContainer(
                    image: Appimages.car7,
                    name: 'Toyota Series',
                    price: '190,000',
                  color: Colors.grey.shade200,
                ),
              ],),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CarsContainer(
                    image: Appimages.car9,
                    name: 'Hyundai Series',
                    price: '260,000',
                  color: Colors.grey.shade200,
                ),
                CarsContainer(
                    image: Appimages.car5,
                    name: 'BMW Series',
                    price: '190,000',
                  color: Colors.grey.shade200,
                ),
              ],),
          ],),
        ),
      ),
    );
  }
}
