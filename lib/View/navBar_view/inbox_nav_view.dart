import 'package:car_rental/controller/components/custom_list.dart';
import 'package:car_rental/controller/constant/linkers.dart';

class InboxNavView extends StatelessWidget {
  const InboxNavView({super.key});

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
          title: CustomTextBold(text: 'Inbox',fontsize: 18,),
          actions: [
            Icon(Icons.search),
            SizedBox(width: width*.05),
            Padding(
              padding:  EdgeInsets.only(right: width*.04),
              child: Icon(Icons.message),
            ),
          ],
          bottom: TabBar(tabs: [
            CustomTextBold(text: 'Chats',fontsize: 18,),
            CustomTextBold(text: 'Calls',fontsize: 18,),
          ],
              indicatorColor: Colors.black,
            indicatorSize: TabBarIndicatorSize.tab,
          ),
        ),
        body: TabBarView(children: [
          SingleChildScrollView(
            child: Column(children: [
              CustomList(image: Appimages.bmwlogo, title: "BMW Store"),
              CustomList(image: Appimages.hondalog, title: "Honda Offcial"),
              CustomList(image: Appimages.nessanlogo, title: "Nissan Offcial"),
              CustomList(image: Appimages.volvologo, title: "Volvo Store"),
              CustomList(image: Appimages.teslalogo, title: "Tesla Strore"),
              CustomList(image: Appimages.bmwlogo, title: "BMW Store"),
              CustomList(image: Appimages.hondalog, title: "Honda Offcial"),
              CustomList(image: Appimages.nessanlogo, title: "Nissan Offcial"),
              CustomList(image: Appimages.volvologo, title: "Volvo Store"),
              CustomList(image: Appimages.teslalogo, title: "Tesla Strore"),
            ],),
          ),
          SingleChildScrollView(
            child: Column(
              children: [
              CustomCallsListTile(image: Appimages.nessanlogo,title: 'Nissan Store',color: Colors.blue,subTitle: 'OutGoing | Dec 19 2024',),
              CustomCallsListTile(image: Appimages.teslalogo,title: 'Tesla Store',),
              CustomCallsListTile(image: Appimages.volvologo,title: 'Volvo Store',color: Colors.red,subTitle: 'Missed | Dec 19 2024',),
              CustomCallsListTile(image: Appimages.hondalog,title: 'Honda Store',),
              CustomCallsListTile(image: Appimages.bmwlogo,title: 'BMW Store',color: Colors.red,subTitle: 'Missed | Dec 19 2024',),
                CustomCallsListTile(image: Appimages.nessanlogo,title: 'Nissan Store',color: Colors.blue,subTitle: 'OutGoing | Dec 19 2024',),
                CustomCallsListTile(image: Appimages.teslalogo,title: 'Tesla Store',),
                CustomCallsListTile(image: Appimages.volvologo,title: 'Volvo Store',color: Colors.red,subTitle: 'Missed | Dec 19 2024',),
                CustomCallsListTile(image: Appimages.hondalog,title: 'Honda Store',),
                CustomCallsListTile(image: Appimages.bmwlogo,title: 'BMW Store',color: Colors.red,subTitle: 'Missed | Dec 19 2024',),
            ],),
          )
        ]),
      ),
    );
  }
}
