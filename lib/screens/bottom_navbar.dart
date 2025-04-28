import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:qafworld_app/screens/about_screen.dart';
import 'package:qafworld_app/screens/contact_screen.dart';
import 'package:qafworld_app/screens/facts_screen.dart';
import 'package:qafworld_app/screens/home.dart';
import 'package:qafworld_app/screens/payment_screen.dart';

class BottomNavigationbar extends StatefulWidget {
  const BottomNavigationbar({super.key});

  @override
  State<BottomNavigationbar> createState() => _BottomNavigationbarState();
}

class _BottomNavigationbarState extends State<BottomNavigationbar> {
  int index=0;
  List screens=[
    const PaymentScreen(),
    const HomeScreen(),
      const ContactScreen(),
      const FactsScreen()
    
  ];

  int myIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(

        onTap: (index){
          setState(() {
            myIndex = index;
          });
          
        },
        buttonBackgroundColor: Colors.transparent,
        animationCurve: Curves.easeInOutCubic,
        
        items: const [
        Icon(Icons.payment),
        Icon(Icons.home),
        Icon(Icons.contact_mail),
        Icon(Icons.person), 
      ]),

      body:screens[myIndex],
      
    );
  }
}
