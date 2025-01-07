
import 'package:car_rental/controller/constant/linkers.dart';

class GalleryContainer extends StatelessWidget {
  String image;
   GalleryContainer({super.key,required this.image});

  @override
  Widget build(BuildContext context) {
    final width=MediaQuery.sizeOf(context).width;
    final height=MediaQuery.sizeOf(context).height;
    return  Padding(
      padding:  EdgeInsets.only(right: width*.04),
      child: Container(
        height: height*.08,
        width: width*.22,
        child: Center(child: Image(image: AssetImage(image))),
        decoration: BoxDecoration(
          color: Colors.grey.shade200,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
