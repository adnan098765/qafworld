import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:qafworld_app/screens/about_screen.dart';
import 'package:qafworld_app/screens/bottom_navbar.dart';
import 'package:qafworld_app/screens/contact_screen.dart';
import 'package:qafworld_app/screens/deposit_history.dart';
import 'package:qafworld_app/screens/facts_screen.dart';
import 'package:qafworld_app/screens/home.dart';
import 'package:qafworld_app/screens/login_screen.dart';
import 'package:qafworld_app/screens/payment_screen.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int currentindex = 0;
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  List data1 = [
    'My Ads',
    'Ads Earnings',
    'Plan',
    'Withdraw',
    'Transfer',
    'Referral',
    'Support',
    'Setting',
    '2FA'
  ];
  List data2 = [
    'assets/ad.png',
    'assets/hand.png',
    'assets/timeline.png',
    'assets/hand.png',
    'assets/money-bag.png',
    'assets/audience.png',
    'assets/assistant.png',
    'assets/settings.png',
    'assets/padlock.png',
  ];

  List detail3 = [
    'Main Balance',
    'Total Referral Bonus',
    'Total Deposit',
    'Total Payout',
    'Current Plan',
    'Total Advertisement View',
    'Today Advertisement View',
    'Remaining Ads View For Today',
  ];
  List RS = [
    'RS 0',
    'RS 0',
    'RS 0',
    'RS 0',
    'RS 0',
    'RS 0',
    'RS 0',
    'RS 0',
    'RS 0',
  ];

  List data3 = [
    'assets/money-bag.png',
    'assets/gift.png',
    'assets/walet.png',
    'assets/hand.png',
    'assets/plan.png',
    'assets/ad.png',
    'assets/ad.png',
    'assets/ad.png',
  ];

  List addsumary = [
    'assets/ad.png',
    'assets/ad.png',
    'assets/ad.png',
    'assets/ad.png',
    'assets/ad.png',
    'assets/ad.png',
    'assets/ad.png',
    'assets/ad.png',
  ];

  List addsum1 = [
    ' 9',
    ' 0',
    ' 0',
    ' 0',
    ' 0',
    ' 0',
    ' 0',
  ];
  List adsumarydetail = [
    'Available Advertisement',
    'Total',
    'Active',
    'Deactivated',
    'Pending',
    'Rejected',
    'Max View Limit Exceeded Ads',
  ];

  List refpic = [
    'assets/gift.png',
    'assets/gift.png',
    'assets/gift.png',
    'assets/gift.png',
    'assets/team.png',
    'assets/gift.png',
    'assets/assistant.png',
  ];
  List refbalnce = [
    ' RS 0',
    'RS 0',
    'RS 0',
    'RS 0',
    ' 0',
    'RS 0',
    ' 0',
  ];

  List refdetail = [
    'Total Referral Bonus',
    'Deposit Referral Bonus',
    'Purchased Plan Referral Bonus',
    'Ads View Referral Bonus',
    'My Referral Team Member',
    'Last Referral Bonus',
    'Total Support Ticket',
  ];
  final pictures = [
    ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Image.asset(
        'assets/1.jpg',
      ),
    ),
    ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Image.asset(
        'assets/2.jpg',
      ),
    ),
    ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Image.asset(
        'assets/3.jpg',
      ),
    ),
    ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Image.asset(
        'assets/4.jpg',
      ),
    ),
    ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Image.asset(
        'assets/5.jpg',
      ),
    ),
    ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Image.asset(
        'assets/6.jpg',
      ),
    ),
    ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Image.asset(
        'assets/7.jpg',
      ),
    ),
    ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Image.asset(
        'assets/8.jpg',
      ),
    ),
    ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Image.asset(
        'assets/9.jpg',
      ),
    ),
    ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Image.asset(
        'assets/10.jpg',
      ),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    double width = MediaQuery.sizeOf(context).width;

    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        leading: Image.asset('assets/logo.png'),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 10),
            height: height * .04,
            width: width * .1,
            decoration: BoxDecoration(
                gradient: const LinearGradient(
                    colors: [Color(0xfffaaf40), Color(0xff01acee)]),
                borderRadius: BorderRadius.circular(10),
                color: Colors.pinkAccent.shade100),
            child: IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LogInScreen()));
              },
              icon: const Icon(Icons.login),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(right: 10),
            height: height * .04,
            width: width * .1,
            decoration: BoxDecoration(
                gradient: const LinearGradient(
                    colors: [Color(0xfffaaf40), Color(0xff01acee)]),
                borderRadius: BorderRadius.circular(10)),
            child: IconButton(
              onPressed: () {
                _scaffoldKey.currentState?.openEndDrawer();
              },
              icon: const Icon(Icons.menu),
            ),
          ),
        ],
        automaticallyImplyLeading: false,
      ),
      endDrawer: Drawer(
        child: SizedBox(
          height: height,
          width: width,
          child: Column(
            children: [
              SizedBox(
                height: height * .1,
              ),
              ListTile(
                splashColor: Colors.blue,
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => BottomNavigationbar()));
                },
                title: const Text('Home'),
                leading: const Icon(Icons.home),
              ),
              ListTile(
                splashColor: Colors.blue,
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DashboardScreen()));
                },
                title: const Text('Dashboard'),
                leading: const Icon(Icons.dashboard),
              ),

              ListTile(
                splashColor: Colors.blue,
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => PaymentScreen()));
                },
                title: const Text('Add Fund'),
                leading: const Icon(Icons.payment),
              ),

              ListTile(
                splashColor: Colors.blue,
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DepositHistoryScreen()));
                },
                title: const Text('Deposit History'),
                leading: const Icon(Icons.history_edu_outlined),
              ),
              ListTile(
                splashColor: Colors.blue,
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => AboutScreen()));
                },
                title: const Text('About'),
                leading: const Icon(Icons.perm_contact_calendar_sharp),
              ),
              ListTile(
                splashColor: Colors.blue,
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomeScreen()));
                },
                title: const Text('Plan'),
                leading: const Icon(Icons.next_plan_outlined),
              ),
              ListTile(
                splashColor: Colors.blue,
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => FactsScreen()));
                },
                title: const Text('FAQ'),
                leading: const Icon(Icons.question_mark_rounded),
              ),
              // ListTile(
              //   splashColor: Colors.blue,
              //   onTap: (){},
              //   title: const Text('Blog'),
              //   leading: const Icon(Icons.article),
              // ),
              ListTile(
                splashColor: Colors.blue,
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ContactScreen()));
                },
                title: const Text('Contact'),
                leading: const Icon(Icons.contact_page_rounded),
              ),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: height * 0.03,
              ),
              CarouselSlider(
                options: CarouselOptions(
                  autoPlay: true,
                  height: height * 0.5,
                  onPageChanged: (index, reason) {
                    setState(() {
                      currentindex = index;
                    });
                  },
                ),
                items: pictures,
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Text(
                '+447424925758نوٹ ! ایپ کو استعمال کرنے میں اگر کوئی مشکل پیش ائے تو اس نمبر پر رابطہ کریں یاد رکھیں ایپ جوائن کرنے کے بعد اگر لاگ اؤٹ ہو جائیں تو گوگل کروم سے دوبارہ لاگ ان ہوں گے',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Container(
                height: height * 0.001,
                width: width,
                decoration: BoxDecoration(color: Colors.black),
              ),
              Text(
                'یہ ایک چیرٹی نیٹ ورک ہے جس میں اپ کو شامل ہونے کے بعد اپنے حصے کے مزید پانچ لوگ شامل کرنے ہوتے ہیں اگر اپ مزید لوگ شامل کر سکتے ہیں تو پیکج پرچیز کریں بصورت دیگر اپ کا ٹری گرو نہیں کرے گا',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                    fontSize: 16),
              ),
              Text(
                'روزانہ انکم حاصل کرنے کے لیے سب سے پہلے اپ خود پیکج پرچیز کریں اور اس کے بعد مزید لوگوں کو اپنے لنک شیئر کریں جیسے ہی لوگ اپ کے ٹری میں داخل ہوں گے اپ کوریفرل بونس سے روزانہ انکم ملنا شروع ہو جائے گی مزید معلومات کے لیے کاپی کر کے یوٹیوب سرچ میں پیسٹ کریں qafworld.com',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Text(
                'Dashboard',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.indigo),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              GridView.builder(
  
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 9,
                  
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisExtent: height*0.15, 
                    mainAxisSpacing: 15,
                    crossAxisSpacing: 15
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    return InkWell(
                      onTap: () {},
                      child: Container(
                        
                        
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.cyan),
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              data2[index],
                              height: height * 0.07,
                              color: Colors.blue,
                            ),
                            SizedBox(
                              height: height * 0.02,
                            ),
                            Text(
                              data1[index],
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
              SizedBox(
                height: height * 0.02,
              ),
               SizedBox(
                height: height * 0.02,
              ),
             
              GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
                
                    mainAxisExtent: height*0.15, 
                    mainAxisSpacing: 15,
                    crossAxisSpacing: 15
                ),
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 8,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      
                      height: height * 0.3,
                      width: width*0.3,
                      decoration: BoxDecoration(
                         border: Border.all(color: Colors.cyan),
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: height * 0.02,
                          ),
                          Text(
                            detail3[index],
                            style: TextStyle(
                                fontWeight: FontWeight.bold,fontSize: 15
                                
                                ),
                          ),
                          SizedBox(
                            height: height * 0.02,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(RS[index],
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      )),
                              Image.asset(
                                data3[index],
                                height: height * 0.05,
                                color: Colors.blue,
                              )
                            ],
                          )
                        ],
                      ),
                    );
                  }),



              SizedBox(
                height: height * 0.03,
              ),
              Text(
                'My Advertisement Summary',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold, color: Colors.indigo
                ),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              GridView.builder( 
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
                 mainAxisExtent: height*0.15, 
                    mainAxisSpacing: 15,
                    crossAxisSpacing: 15),
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 7,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      
                      height: height * 0.15,
                      width: width,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.cyan),
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: height * 0.02,
                          ),
                          Text(
                            adsumarydetail[index],
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 17,
                                ),
                          ),
                          SizedBox(
                            height: height * 0.01,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(addsum1[index],
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      )),
                              Image.asset(
                                addsumary[index],
                                height: height * 0.05,
                                color: Colors.blue,
                              )
                            ],
                          )
                        ],
                      ),
                    );
                  }),
              SizedBox(
                height: height * 0.03,
              ),
              Text(
                'My Referral Bonus Statistics',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold ,color: Colors.indigo
                ),
              ),
              SizedBox(
                height: height * 0.03,
              ),
              GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
                 mainAxisExtent: height*0.15, 
                    mainAxisSpacing: 15,
                    crossAxisSpacing: 15),
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 7,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      
                      height: height * 0.15,
                      width: width,
                      decoration: BoxDecoration(border: Border.all(color: Colors.cyan),
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: height * 0.02,
                          ),
                          Text(
                            refdetail[index],
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                ),
                          ),
                          SizedBox(
                            height: height * 0.02,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(refbalnce[index],
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      )),
                              Image.asset(
                                refpic[index],
                                height: height * 0.05,
                                color: Colors.blue,
                              )
                            ],
                          )
                        ],
                      ),
                    );
                  }),
              SizedBox(
                height: height * 0.02,
              ),
              Text(
                'Referral Link',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Row(
                  children: [
                    Container(
                      height: height * 0.05,
                      width: width * 0.6,
                      child: TextFormField(
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                        ),
                      ),
                    ),
                    InkWell(onTap: () {
                      
                    },
                      child: Container(
                        height: height * 0.05,
                        width: width * 0.3,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          gradient: const LinearGradient(
                              colors: [Color(0xfffaaf40), Color(0xff01acee)]),
                        ),
                        child: Center(
                            child: Text(
                          'Copy Link',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        )),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
