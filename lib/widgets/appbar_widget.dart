import 'package:flutter/material.dart';
import 'package:qafworld_app/screens/home.dart';
import 'package:qafworld_app/screens/login_screen.dart';

class AppBarWidget extends StatefulWidget {
  const AppBarWidget({super.key});

  @override
  State<AppBarWidget> createState() => _AppBarWidgetState();
}

class _AppBarWidgetState extends State<AppBarWidget> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    double width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      appBar:AppBar(
        leading: Image.asset('assets/logo.png'),
            actions: [
              Container(
                margin: const EdgeInsets.only(right: 10),
                height: height*.04,
                width: width*.1,
                decoration: BoxDecoration(
                    gradient: const LinearGradient(
                        colors: [Color(0xfffaaf40), Color(0xff01acee)]),
                    borderRadius: BorderRadius.circular(10),
                  color: Colors.pinkAccent.shade100
                ),
                child: IconButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>LogInScreen()));
                  },
                  icon: const Icon(Icons.login),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(right: 10),
                height: height*.04,
                width: width*.1,
                decoration: BoxDecoration(
                    gradient: const LinearGradient(
                        colors: [Color(0xfffaaf40), Color(0xff01acee)]),
                    borderRadius: BorderRadius.circular(10)
                ),
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
              SizedBox(height: height*.1,),
              ListTile(
                splashColor: Colors.blue,
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
                },
                title: const Text('Home'),
                leading: const Icon(Icons.home),
              ),
              ListTile(
                splashColor: Colors.blue,
                onTap: (){},
                title: const Text('About'),
                leading: const Icon(Icons.perm_contact_calendar_sharp),
              ),
              ListTile(
                splashColor: Colors.blue,
                onTap: (){
                   Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
                },
                title: const Text('Plan'),
                leading: const Icon(Icons.next_plan_outlined),
              ),
              ListTile(
                splashColor: Colors.blue,
                onTap: (){},
                title: const Text('FAQ'),
                leading: const Icon(Icons.question_mark_rounded),
              ),
              ListTile(
                splashColor: Colors.blue,
                onTap: (){},
                title: const Text('Blog'),
                leading: const Icon(Icons.article),
              ),
              ListTile(
                splashColor: Colors.blue,
                onTap: (){},
                title: const Text('Contact'),
                leading: const Icon(Icons.contact_page_rounded),
              ),

            ],
          ),
        ),
        
      ),
      
    );
  }
}