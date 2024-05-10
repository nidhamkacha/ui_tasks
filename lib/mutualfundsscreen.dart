import 'package:flutter/material.dart';

class MutualFundsScreen extends StatefulWidget {
  const MutualFundsScreen({super.key});

  @override
  State<MutualFundsScreen> createState() => _MutualFundsScreenState();
}

var items = [
  {
    "fundname": "Axis Long Terem Equity Fund",
    "type": "Equity ELSS",
    "invesment": "₹ 7.8K",
    "current": "₹8.65k",
  },
  {
    "fundname": "Axis Long Terem Equity Fund",
    "type": "Equity ELSS",
    "invesment": "₹ 7.8K",
    "current": "₹8.65k",
  },
  {
    "fundname": "Axis Long Terem Equity Fund",
    "type": "Equity ELSS",
    "invesment": "₹ 7.8K",
    "current": "₹8.65k",
  },
  {
    "fundname": "Axis Long Terem Equity Fund",
    "type": "Equity ELSS",
    "invesment": "₹ 7.8K",
    "current": "₹8.65k",
  },
];

class _MutualFundsScreenState extends State<MutualFundsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ListView(
            shrinkWrap: true,
            children: [
              SizedBox(
                height: 10,
              ),
              ...items.map(
                (e) => Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 10.0, vertical: 10),
                  child: Container(
                    height: 100,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Color.fromARGB(255, 255, 251, 219),
                      border: Border.all(color: Colors.yellow),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                e["fundname"].toString(),
                                style: TextStyle(fontSize: 18),
                              ),
                              Text(
                                "P&L ₹155",
                                style: TextStyle(color: Colors.red),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                e["type"].toString(),
                                style: TextStyle(color: Colors.black38),
                              ),
                              Text(
                                "XIRR 11.94%",
                                style: TextStyle(color: Colors.green),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Invesment ${e["invesment"].toString()}"),
                              Text("Current ${e["current"].toString()}"),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
