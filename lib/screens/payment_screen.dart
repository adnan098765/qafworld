import 'package:flutter/material.dart';
import 'package:qafworld_app/screens/dashboard.dart';
import 'package:qafworld_app/screens/deposit_history.dart';
import 'package:qafworld_app/screens/home.dart';
import 'package:qafworld_app/screens/login_screen.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    double width = MediaQuery.sizeOf(context).width;

    List logos = [
      'assets/mez1.png',
      'assets/jaz.png',
      'assets/easy1.webp',
    ];

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
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomeScreen()));
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
                onTap: () {},
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
                onTap: () {},
                title: const Text('FAQ'),
                leading: const Icon(Icons.question_mark_rounded),
              ),
              ListTile(
                splashColor: Colors.blue,
                onTap: () {},
                title: const Text('Blog'),
                leading: const Icon(Icons.article),
              ),
              ListTile(
                splashColor: Colors.blue,
                onTap: () {},
                title: const Text('Contact'),
                leading: const Icon(Icons.contact_page_rounded),
              ),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Text(
              'Add Fund',
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.indigo),
            ),
            GridView.builder(
                shrinkWrap: true,
                itemCount: 3,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, mainAxisExtent: height * 0.3),
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    height: height * 0.3,
                    width: width * 0.3,
                    margin: EdgeInsets.only(left: 10, bottom: 10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      children: [
                        Image.asset(
                          logos[index],
                        ),
                        SizedBox(
                          height: height * 0.02,
                        ),
                        Container(
                          height: height * 0.05,
                          width: width * 0.4,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              gradient: const LinearGradient(colors: [
                                Color(0xfffaaf40),
                                Color(0xff01acee)
                              ])),
                          child: Center(
                              child: Text(
                            'Pay Now',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          )),
                        )
                      ],
                    ),
                  );
                })
          ],
        ),
      ),
    );
  }
}
