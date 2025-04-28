
import 'package:flutter/material.dart';
import 'package:qafworld_app/screens/about_screen.dart';
import 'package:qafworld_app/screens/contact_screen.dart';
import 'package:qafworld_app/screens/dashboard.dart';
import 'package:qafworld_app/screens/facts_screen.dart';
import 'package:qafworld_app/screens/home.dart';
import 'package:qafworld_app/screens/signup_screen.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key});

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  // ignore: non_constant_identifier_names
  bool PasswordObscured = true;
  bool is_checked = false;
final _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    double width = MediaQuery.sizeOf(context).width;
    return Scaffold(
       key: _scaffoldKey,
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
                onTap: (){
                   Navigator.push(context, MaterialPageRoute(builder:  (context)=>AboutScreen()));
                },
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
                onTap: (){ Navigator.push(context, MaterialPageRoute(builder: (context)=>FactsScreen()));},
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
                onTap: (){ Navigator.push(context, MaterialPageRoute(builder: (context)=>ContactScreen()));},
                title: const Text('Contact'),
                leading: const Icon(Icons.contact_page_rounded),
              ),

            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 7),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'LogIn',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.indigo),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'Home',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: width * 0.02,
                  ),
                  const Text(
                    '-',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: width * 0.02,
                  ),
                  const Text(
                    'LogIn',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue),
                  )
                ],
              ),
              SizedBox(
                height: height * 0.05,
              ),
              Container(
                height: height * 0.7,
                width: width * 0.95,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'LogIn Here',
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.indigoAccent),
                      ),
                      SizedBox(
                        height: height * 0.04,
                      ),
                      Row(
                        children: [
                          Container(
                            height: height * 0.001,
                            width: width * 0.3,
                            decoration: const BoxDecoration(color: Colors.black),
                          ),
                          SizedBox(
                            width: width * 0.01,
                          ),
                          const Text(
                            'Sign In With Google',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: width * 0.01,
                          ),
                          Container(
                            height: height * 0.001,
                            width: width * 0.27,
                            decoration: const BoxDecoration(color: Colors.black),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: height * 0.03,
                      ),
                      Center(
                          child: Image.asset(
                        'assets/g.jpg',
                        height: height * 0.04,
                      )),
                      SizedBox(
                        height: height * 0.03,
                      ),
                      Row(
                        children: [
                          Container(
                            height: height * 0.001,
                            width: width * 0.1,
                            decoration: const BoxDecoration(color: Colors.black),
                          ),
                          SizedBox(
                            width: width * 0.01,
                          ),
                          const Text(
                            'or Sign In With Username and Password',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: width * 0.01,
                          ),
                          Container(
                            height: height * 0.001,
                            width: width * 0.1,
                            decoration: const BoxDecoration(color: Colors.black),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: height * 0.05,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: 'E-mail or Username',
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15)),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15)),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.04,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: TextFormField(
                          obscureText: PasswordObscured,
                          decoration: InputDecoration(
                            hintText: 'Password',
                            suffixIcon: IconButton(
                                onPressed: () {
                                  setState(() {
                                    PasswordObscured = !PasswordObscured;
                                  });
                                },
                                icon: Icon(PasswordObscured
                                    ? Icons.visibility_off
                                    : Icons.visibility)),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15)),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15)),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.03,
                      ),
                      Row(
                        children: [
                          Checkbox(
                              value: is_checked,
                              onChanged: (val) {
                                setState(() {
                                  is_checked = val!;
                                });
                              }),
                          const Text(
                            'Remember me',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: width * 0.22,
                          ),
                          const Text(
                            'Forgot Password?',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.blue),
                          )
                        ],
                      ),
                      SizedBox(
                        height: height * 0.025,
                      ),
                      Center(
                        child: InkWell(onTap: () {
                          
                        
                           Navigator.push(context, MaterialPageRoute(builder: (context)=>DashboardScreen()));},
                          child: Container(
                            height: height * 0.07,
                            width: width * 0.8,
                            decoration: BoxDecoration(
                                gradient: const LinearGradient(colors: [
                                  Color(0xfffaaf40),
                                  Color(0xff01acee)
                                ]),
                                borderRadius: BorderRadius.circular(10)),
                            child: const Center(
                                child: Text(
                              'SIGN IN',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            )),
                          ),
                        ),
                      ),SizedBox(
                        height: height * 0.015,
                      ),
                      Row(crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("Don't have an account?", style: TextStyle(fontWeight: FontWeight.bold),),
                           SizedBox(
                            width: width * 0.02,
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>const SignUpScreen()));
                            },
                            
                            child: const Text("Create account", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),)),
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
