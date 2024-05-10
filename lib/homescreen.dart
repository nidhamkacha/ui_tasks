import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui_tasks/myinvesment.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 100,
            color: Colors.yellow,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: SizedBox(
                    height: 45,
                    width: 300,
                    child: TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide.none,
                        ),
                        hintText: "Search 3000+ Mutual Fund",
                        prefixIcon: const Icon(Icons.search),
                        prefixIconColor: Colors.black,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 45,
                  width: 45,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: SvgPicture.asset('assets/images/Vector.svg',
                      fit: BoxFit.scaleDown),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Container(
              height: 80,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.yellow, borderRadius: BorderRadius.circular(8)),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Bajaj Finance Hikes FD rates"),
                        Text("3Y BM FD at 7.2% p.a. Check all rates "),
                      ],
                    ),
                  ),
                  SvgPicture.asset('assets/images/Asset 1 1.svg')
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MyinvestmentScreen(),
                    ));
              },
              child: Container(
                height: 300,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    border: Border.all(
                      color: Colors.yellow,
                    )),
                child: Column(
                  children: [
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 40.0),
                          child: Column(
                            children: [
                              Text('Total Return'),
                              Text(
                                '₹ -8.3k (14.23 % )',
                                style:
                                    TextStyle(color: Colors.red, fontSize: 20),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 100,
                        ),
                        SvgPicture.asset(
                          'assets/images/Vector (3).svg',
                        ),
                        SvgPicture.asset(
                          'assets/images/Vector (4).svg',
                        )
                      ],
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Divider(
                      color: Colors.black26,
                      thickness: 2,
                      indent: 20,
                      endIndent: 20,
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 40.0),
                          child: SvgPicture.asset(
                            'assets/images/Vector (1).svg',
                          ),
                        ),
                        Column(
                          children: [
                            Text('Invested'),
                            Text('29.33k'),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 40.0),
                          child: SvgPicture.asset(
                            'assets/images/Vector (1).svg',
                          ),
                        ),
                        Column(
                          children: [
                            Text('Current'),
                            Text('25.26k'),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Text(
              'Category',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Container(
                      height: 100,
                      width: 70,
                      decoration: BoxDecoration(
                        color: Colors.yellow,
                        shape: BoxShape.circle,
                      ),
                      child: SvgPicture.asset(
                        'assets/images/Asset 1 7.svg',
                        fit: BoxFit.scaleDown,
                      ),
                    ),
                    Text("Mutual Funds")
                  ],
                ),
                Column(
                  children: [
                    Container(
                      height: 100,
                      width: 70,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 255, 251, 219),
                        shape: BoxShape.circle,
                        border:
                            Border.all(color: Color.fromARGB(255, 244, 220, 4)),
                      ),
                      child: SvgPicture.asset(
                        'assets/images/investment 1 (Traced).svg',
                        fit: BoxFit.scaleDown,
                      ),
                    ),
                    Text("Fixed Diposit")
                  ],
                ),
                Column(
                  children: [
                    Container(
                      height: 100,
                      width: 70,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 255, 251, 219),
                        shape: BoxShape.circle,
                        border:
                            Border.all(color: Color.fromARGB(255, 244, 220, 4)),
                      ),
                      child: SvgPicture.asset(
                        'assets/images/Vector (2).svg',
                        fit: BoxFit.scaleDown,
                      ),
                    ),
                    Text("Investment")
                  ],
                ),
                Column(
                  children: [
                    Container(
                      height: 100,
                      width: 70,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 255, 251, 219),
                          shape: BoxShape.circle,
                          border: Border.all(
                              color: Color.fromARGB(255, 244, 220, 4))),
                      child: SvgPicture.asset(
                        'assets/images/Asset 1 8.svg',
                        fit: BoxFit.scaleDown,
                      ),
                    ),
                    Text("SIP")
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Top Ranking Funds',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                ),
                Text('View All'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
