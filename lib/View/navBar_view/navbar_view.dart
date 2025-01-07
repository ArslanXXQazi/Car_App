
import 'package:car_rental/View/navBar_view/inbox_nav_view.dart';
import 'package:car_rental/View/navBar_view/order_nav_view.dart';
import 'package:car_rental/View/navBar_view/wallet_nav_view.dart';
import 'package:car_rental/controller/constant/linkers.dart';

class NavBarView extends StatefulWidget {
  const NavBarView({super.key});

  @override
  State<NavBarView> createState() => _NavBarViewState();
}

class _NavBarViewState extends State<NavBarView> {
  int _selectedindex=0;
  void navOntab(int index)
  {
    setState(() {
      _selectedindex=index;
    });
  }

  List widgetOptions=
  [
    HomeNavView(),
    OrderNavView(),
    InboxNavView(),
    WalletNavView(),
    HomeNavView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: widgetOptions.elementAt(_selectedindex),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          currentIndex: _selectedindex,
          onTap: navOntab,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.trolley),label: 'Orders'),
            BottomNavigationBarItem(icon: Icon(Icons.message_outlined),label: 'Inbox'),
            BottomNavigationBarItem(icon: Icon(Icons.account_balance_wallet_outlined),label: 'Wallet'),
            BottomNavigationBarItem(icon: Icon(Icons.person),label: 'Profile'),
          ]
      ),
    );
  }
}