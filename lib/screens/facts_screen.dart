import 'package:flutter/material.dart';
import 'package:qafworld_app/screens/about_screen.dart';
import 'package:qafworld_app/screens/contact_screen.dart';
import 'package:qafworld_app/screens/home.dart';
import 'package:qafworld_app/screens/login_screen.dart';

class FactsScreen extends StatefulWidget {
  const FactsScreen({super.key});

  @override
  State<FactsScreen> createState() => _FactsScreenState();
}

class _FactsScreenState extends State<FactsScreen> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
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
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomeScreen()));
                },
                title: const Text('Home'),
                leading: const Icon(Icons.home),
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
      body: SingleChildScrollView(
        child: Column(
          children: [
             SizedBox(height: height*0.04,),
            ListTile(
              title: Text(
                'How Does the QAF World Platform Works',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue),
              ),
              subtitle: Text(
                'QAF World platform works on the Multi-Level Marketing idea. You need to refer minimum 3\n users to start earning from the platform',
                style: TextStyle(fontSize: 15),
              ),
            ),
              SizedBox(height: height*0.02,),
            ListTile(
              title: Text(
                'How can i start earning QAF world Platform?',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue),
              ),
              subtitle: Text(
                "To start earning on the QAF World Platform Please follow these steps:  \n 1. Register Yourself on the Platform. \n 2. Deposit Money according to your desired plan. \n 3. Purchase Plan. \n 4. Share your referral link with others (Note: you will only earn a commission if your referral user purchases the paid plan)",
                style: TextStyle(fontSize: 15),
              ),
            ),
            SizedBox(height: height*0.02,),
        
             ListTile(
              title: Text(
                'How can i deposit money on QAF world Platform?',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue),
              ),
              subtitle: Text(
               "Currently, we are accepting payments through below mentioned Gateways: \n 1. Bank Transfer\n 2. EasyPaisa \n3. JazzCash",
                style: TextStyle(fontSize: 15),
              ),
            ),
            SizedBox(height: height*0.02,),
        
             ListTile(
              title: Text(
                'How can i withdraw my earnings?',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue),
              ),
              subtitle: Text(
               "Currently, you can withdraw your earnings through below mentioned Gateways: \n 1. Bank Transfer \n 2. EasyPaisa\n3. JazzCash",
                style: TextStyle(fontSize: 15),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
