import 'package:car_rental/controller/constant/linkers.dart';

class WishListView extends StatelessWidget {
  const WishListView({super.key});

  @override
  Widget build(BuildContext context) {
    final width=MediaQuery.sizeOf(context).width;
    final height=MediaQuery.sizeOf(context).height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: CustomTextBold(text: "My Wishlist"),
        actions: [
          Icon(Icons.search),
        ],

      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:EdgeInsets.symmetric(horizontal: width*.02),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CarsContainer(
                      image: Appimages.car10,
                      name: 'Tesla Series',
                      price: '190,000'
                  ),
                  CarsContainer(
                      image: Appimages.car6,
                      name: 'Mercedes series',
                      price: '190,000'
                  ),
                ],),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CarsContainer(
                      image: Appimages.car8,
                      name: 'Honda Series',
                      price: '160,000'
                  ),
                  CarsContainer(
                      image: Appimages.car7,
                      name: 'Toyota Series',
                      price: '190,000'
                  ),
                ],),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CarsContainer(
                      image: Appimages.car9,
                      name: 'Hyundai Series',
                      price: '260,000'
                  ),
                  CarsContainer(
                      image: Appimages.car5,
                      name: 'BMW Series',
                      price: '190,000'
                  ),
                ],),
            ],
          ),
        ),
      ),
    );
  }
}
