import 'package:flutter/material.dart';
import 'package:qafworld_app/screens/about_screen.dart';
import 'package:qafworld_app/screens/bottom_navbar.dart';
import 'package:qafworld_app/screens/contact_screen.dart';
import 'package:qafworld_app/screens/dashboard.dart';
import 'package:qafworld_app/screens/facts_screen.dart';
import 'package:qafworld_app/screens/home.dart';
import 'package:qafworld_app/screens/login_screen.dart';
import 'package:qafworld_app/screens/payment_screen.dart';

class DepositHistoryScreen extends StatefulWidget {
  const DepositHistoryScreen({super.key});

  @override
  State<DepositHistoryScreen> createState() => _DepositHistoryScreenState();
}

class _DepositHistoryScreenState extends State<DepositHistoryScreen> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  String allPayment = "All Payment";

  String _selectedLanguage = 'All Payment';

  List paymentmethod = [
    'Complete Payment',
    'Pending Payment',
    'Cancel Payment'
  ];
  bool isOpen = false;

  List items = ['Complete Payment', 'Pending Payment', 'Cancel Payment'];

  String _dropDownValue = "All Payment";
  TextEditingController _languageController = TextEditingController();
  TextEditingController dateController = TextEditingController();
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
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => PaymentScreen()));
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
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Text(
              'Deposit History',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            InkWell(
              onTap: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return Center(
                          child: Container(
                        height: height * 0.5,
                        width: width,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Material(
                            child: Column(children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    'Search',
                                    style: TextStyle(
                                        decoration: TextDecoration.none,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.indigo),
                                  ),
                                  IconButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      icon: Icon(Icons.close))
                                ],
                              ),
                              Container(
                                height: height * 0.001,
                                width: width,
                                decoration: BoxDecoration(color: Colors.black),
                              ),
                              SizedBox(
                                height: height * 0.02,
                              ),
                              Material(
                                  child: TextFormField(
                                decoration: InputDecoration(
                                    hintText: 'Search By Transaction ID',
                                    focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide:
                                            BorderSide(color: Colors.blue)),
                                    enabledBorder: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(10))),
                              )),
                              SizedBox(
                                height: height * 0.01,
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  child: DropdownButtonFormField<String>(
                                    value: _selectedLanguage,
                                    decoration: const InputDecoration(
                                      border: OutlineInputBorder(),
                                      contentPadding:
                                          EdgeInsets.symmetric(horizontal: 10),
                                    ),
                                    items: <String>[
                                      'All Payment',
                                      'Complete Payment',
                                      'Pending Payment',
                                      'Cancel Payment'
                                    ].map((String value) {
                                      return DropdownMenuItem<String>(
                                        value: value,
                                        child: Text(value),
                                      );
                                    }).toList(),
                                    onChanged: (newValue) {
                                      setState(() {
                                        _selectedLanguage = newValue!;
                                        _languageController.text = newValue;
                                      });
                                    },
                                  ),
                                ),
                              ),
                               TextFormField(
                                controller: dateController,
                                decoration: const InputDecoration(
                                  enabledBorder: OutlineInputBorder(),
                                  focusedBorder: OutlineInputBorder(),
                                  hintText: 'Select date',
                                  
                                ),
                                onTap: () {
                                  DateTime picked
                                },
                               ),
                            ]),
                          ),
                        ),
                      ));
                    });
              },
              child: Container(
                height: height * 0.07,
                width: width * 0.8,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: const LinearGradient(
                      colors: [Color(0xfffaaf40), Color(0xff01acee)]),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'FILTER',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    SizedBox(
                      width: width * 0.02,
                    ),
                    Image.asset(
                      'assets/filter.png',
                      height: height * 0.04,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
