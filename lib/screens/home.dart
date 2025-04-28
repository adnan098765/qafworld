import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:qafworld_app/screens/about_screen.dart';
import 'package:qafworld_app/screens/bottom_navbar.dart';
import 'package:qafworld_app/screens/contact_screen.dart';
import 'package:qafworld_app/screens/dashboard.dart';
import 'package:qafworld_app/screens/facts_screen.dart';

import 'package:qafworld_app/screens/login_screen.dart';
import 'package:qafworld_app/widgets/mode_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final images = [
    Image.asset(
      'assets/first.png',
    ),
    Image.asset('assets/second.png')
  ];
  int currentindex = 0;

  final _scaffoldKey = GlobalKey<ScaffoldState>();
  List<PercentModel> myData = [
    PercentModel(percentage: '20%', level: 'level 1'),
    PercentModel(percentage: '8%', level: 'level 2'),
    PercentModel(percentage: '7%', level: 'level 3'),
    PercentModel(percentage: '5%', level: 'level 4'),
    PercentModel(percentage: '4%', level: 'level 5'),
    PercentModel(percentage: '3%', level: 'level 6'),
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
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => BottomNavigationbar()));
                  },
                  title: const Text('Home'),
                  leading: const Icon(Icons.home),
                ),
                 ListTile(
                  splashColor: Colors.blue,
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => DashboardScreen()));
                  },
                  title: const Text('Dashboard'),
                  leading: const Icon(Icons.dashboard),
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
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ContactScreen()));
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
              CarouselSlider(
                options: CarouselOptions(
                  autoPlay: true,
                  height: height * 0.3,
                  onPageChanged: (index, reason) {
                    setState(() {
                      currentindex = index;
                    });
                  },
                ),
                items: images,
              ),
              SizedBox(
                height: height * 0.02,
              ),
              const Text(
                'UNLEASH YOUR EARNING POWER:',
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 17,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              const Text(
                'Our Plan Offerings At A Glance',
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff3A3F64)),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Container(
                height: height * 0.45,
                child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: 6,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        margin: const EdgeInsets.only(right: 20),
                        height: height * 0.09,
                        width: width * 0.83,
                        decoration: BoxDecoration(
                            color: Colors.pink.shade50,
                            borderRadius: BorderRadius.circular(15)),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 13, top: 20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Junior Plan',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff3A3F64)),
                              ),
                              SizedBox(
                                height: height * 0.02,
                              ),
                              const Text(
                                'RS 1500',
                                style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff3A3F64)),
                              ),
                              SizedBox(
                                height: height * 0.02,
                              ),
                              const Text(
                                'Good choice for start',
                                style: TextStyle(fontSize: 20),
                              ),
                              SizedBox(
                                height: height * 0.02,
                              ),
                              const Row(
                                children: [
                                  Icon(
                                    Icons.check_circle,
                                    color: Colors.green,
                                  ),
                                  Text(
                                    'Period: 30 Days',
                                    style: TextStyle(fontSize: 20),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: height * 0.01,
                              ),
                              const Row(
                                children: [
                                  Icon(
                                    Icons.check_circle,
                                    color: Colors.green,
                                  ),
                                  Text(
                                    'Daily Ad Limit: 2 Ads',
                                    style: TextStyle(fontSize: 20),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: height * 0.01,
                              ),
                              const Row(
                                children: [
                                  Icon(
                                    Icons.check_circle,
                                    color: Colors.green,
                                  ),
                                  Text(
                                    'Refferal Bonus: Up to 5 level',
                                    style: TextStyle(fontSize: 20),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: height * 0.03,
                              ),
                              Center(
                                child: InkWell(
                                  onTap: () {
                                    showDialog(
                                        context: context,
                                        builder: (context) {
                                          return Center(
                                            child: Container(
                                              height: height * 0.25,
                                              width: width * 0.9,
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          15)),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 10),
                                                child: Column(
                                                  children: [
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        const Text(
                                                          'Purchase Plan',
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.indigo,
                                                              fontSize: 20,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                        ),
                                                        IconButton(
                                                            onPressed: () {
                                                              Navigator.pop(
                                                                  context);
                                                            },
                                                            icon: const Icon(
                                                                Icons.close))
                                                      ],
                                                    ),
                                                    SizedBox(
                                                      height: height * 0.02,
                                                    ),
                                                    const Text(
                                                      'Please at first login to your account to purchase',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.indigo,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                    const Text(
                                                      'plan.',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.indigo,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                    SizedBox(
                                                      height: height * 0.04,
                                                    ),
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceEvenly,
                                                      children: [
                                                        Material(
                                                          child: InkWell(
                                                            onTap: () {
                                                              Navigator.pop(
                                                                  context);
                                                            },
                                                            child: Container(
                                                              height:
                                                                  height * 0.06,
                                                              width:
                                                                  width * 0.35,
                                                              decoration: BoxDecoration(
                                                                  color: Colors
                                                                      .indigo,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              10)),
                                                              child:
                                                                  const Center(
                                                                      child:
                                                                          Text(
                                                                'Close',
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        20,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    color: Colors
                                                                        .white),
                                                              )),
                                                            ),
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          width: width * 0.01,
                                                        ),
                                                        Material(
                                                          child: InkWell(
                                                            onTap: () {
                                                              Navigator.push(
                                                                  context,
                                                                  MaterialPageRoute(
                                                                      builder:
                                                                          (context) =>
                                                                              const LogInScreen()));
                                                            },
                                                            child: Container(
                                                              height:
                                                                  height * 0.06,
                                                              width:
                                                                  width * 0.35,
                                                              decoration: BoxDecoration(
                                                                  gradient:
                                                                      const LinearGradient(
                                                                          colors: [
                                                                        Color(
                                                                            0xfffaaf40),
                                                                        Color(
                                                                            0xff01acee)
                                                                      ]),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              10)),
                                                              child:
                                                                  const Center(
                                                                      child:
                                                                          Text(
                                                                'Login',
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        20,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    color: Colors
                                                                        .white),
                                                              )),
                                                            ),
                                                          ),
                                                        )
                                                      ],
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ),
                                          );
                                        });
                                  },
                                  child: Container(
                                    height: height * 0.07,
                                    width: width * 0.6,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        gradient: const LinearGradient(colors: [
                                          Color(0xfffaaf40),
                                          Color(0xff01acee)
                                        ])),
                                    child: const Center(
                                        child: Text(
                                      'PERCHASE PLAN',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    )),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    }),
              ),
            SizedBox(height: height*0.03,),
              Text('REFFERAL COMMISSION', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),),
              SizedBox(height: height*0.02,),
              Text('Referral Bonus Level On Purchase Plan', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,color: Colors.indigo),),

              Padding(
                padding: const EdgeInsets.only(bottom: 15),
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  itemCount: 6,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Container(
                        margin: const EdgeInsets.only(top: 12),
                        height: height * .2,
                        width: width * .3,
                        decoration: BoxDecoration(
                            border: Border.all(width: 3, color: Colors.red),
                            shape: BoxShape.circle),
                        child: Container(
                          margin: const EdgeInsets.all(10),
                          height: height * .1,
                          width: width * .3,
                          decoration: BoxDecoration(
                              color: Colors.orange.shade100,
                              shape: BoxShape.circle),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(myData[index].percentage,
                                  style: const TextStyle(
                                      fontSize: 26, fontWeight: FontWeight.bold)),
                              Text(myData[index].level,
                                  style: const TextStyle(
                                      fontSize: 20, fontWeight: FontWeight.w500)),
                            ],
                          ),
                        ));
                  },
                ),
              )
            ],
          ),
        ));
  }
}
