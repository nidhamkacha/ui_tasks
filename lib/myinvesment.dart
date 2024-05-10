import 'package:flutter/material.dart';
import 'package:ui_tasks/mutualfundsscreen.dart';

class MyinvestmentScreen extends StatefulWidget {
  const MyinvestmentScreen({Key? key}) : super(key: key);

  @override
  State<MyinvestmentScreen> createState() => _MyinvestmentScreenState();
}

class _MyinvestmentScreenState extends State<MyinvestmentScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text('My Investment'),
        centerTitle: true,
        bottom: TabBar(
          controller: _tabController,
          labelColor: Colors.black,
          indicatorColor: Colors.black,
          tabs: [
            Tab(
              text: 'Mutual\n Funds',
            ),
            Tab(
              text: 'FD',
            ),
            Tab(
              text: 'Invesment',
            ),
            Tab(
              text: 'SIP',
            )
          ],
        ),
      ),
      body: TabBarView(controller: _tabController, children: [
        MutualFundsScreen(),
        Center(
          child: Text(""),
        ),
        Center(
          child: Text(""),
        ),
        Center(
          child: Text(""),
        ),
      ]),
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
}
