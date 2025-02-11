import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:growpal_hackathon/pages/CartPage.dart';
import 'package:growpal_hackathon/pages/SellerForm.dart';
import 'Home_Page.dart';
import 'AccountPage.dart';
import 'AboutPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final screens = [
    Home_Page(),
    AccountPage(),
    AboutPage(),
  ];
  var indexx = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: screens[indexx],
        bottomNavigationBar: Container(
          color: Colors.white,
          height: 67,
          padding: EdgeInsets.only(top: 1),
          child: BottomNavigationBar(
            currentIndex: indexx,
            onTap: (index) {
              setState(() {
                indexx = index;
              });
            },
            backgroundColor: Color(0xFFF1D1D1D),
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.white,
            items: [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  size: 35,
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.account_circle,
                  size: 35,
                ),
                label: 'Account',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.currency_exchange,
                  size: 35,
                ),
                label: 'Sell',
              ),
            ],
          ),
        ));
  }
}
