import 'package:flutter/material.dart';
import 'package:qafworld_app/screens/facts_screen.dart';
import 'package:qafworld_app/screens/home.dart';
import 'package:qafworld_app/screens/login_screen.dart';
import 'package:qafworld_app/widgets/appbar_widget.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  bool PasswordObscured = true;
  bool is_checked = false;
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    double width = MediaQuery.sizeOf(context).width;
    return Scaffold(
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
                  onTap: () { Navigator.push(context, MaterialPageRoute(builder: (context)=>FactsScreen()));},
                  title: const Text('FAQ'),
                  leading: const Icon(Icons.question_mark_rounded),
                ),
                // ListTile(
                //   splashColor: Colors.blue,
                //   onTap: () {},
                //   title: const Text('Blog'),
                //   leading: const Icon(Icons.article),
                // ),
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
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(children: [
              Text(
                'Register',
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
                    'Register',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue),
                  )
                ],
              ),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Register Here',
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.indigoAccent),
                        ),
                        SizedBox(
                          height: height * 0.05,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: 'First Name',
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15)),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15)),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: height * 0.02,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: 'Last Name',
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15)),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15)),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: height * 0.02,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: 'Username',
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15)),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15)),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: height * 0.02,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: 'E-mail Address',
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15)),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15)),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: height * 0.02,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: '+92 3038464790',
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15)),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15)),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: height * 0.02,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: TextFormField(
                            decoration: InputDecoration(
                              suffixIcon: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      PasswordObscured = !PasswordObscured;
                                    });
                                  },
                                  icon: Icon(PasswordObscured
                                      ? Icons.visibility_off
                                      : Icons.visibility)),
                              hintText: 'Confirm Password',
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15)),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15)),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: height * 0.02,
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
                          height: height * 0.01,
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
                              'I Agree with the Terms & conditions ',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: height * 0.025,
                        ),
                        Center(
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
                              'SIGN UP',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            )),
                          ),
                        ),

                        SizedBox(height: height*0.01,),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 20),
                          child: Row(mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Already have an account?',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              InkWell(onTap: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>LogInScreen()));
                              },
                                child: Text(
                                  'LogIn here',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.blue),
                                ),
                              ),
                            ],
                          ),
                        )
                      ]))
            ]),
          ),
        ));
  }
}
