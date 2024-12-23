import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ReportsPage extends StatefulWidget {
  ReportsPage({super.key});

  @override
  State<ReportsPage> createState() => _ReportsPageState();
}

class _ReportsPageState extends State<ReportsPage> {
  final List<Map<String, String>> people = [
    {'name': 'John Doe', 'age': '25'},
    {'name': 'Jane Smith', 'age': '30'},
    {'name': 'Alice Johnson', 'age': '22'},
    {'name': 'Bob Brown', 'age': '27'},
    {'name': 'Charlie White', 'age': '35'},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        surfaceTintColor: Colors.white,
        shadowColor: Color(0xff27458f),
        backgroundColor: Colors.white,
        // elevation: 2,
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            const Text(
              'Reports',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const Spacer(
              flex: 5,
            ),
            InkWell(
              onTap: () {
                print('Filtered');
              },
              child: Icon(Icons.tune),
            ),
          ],
        ),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(1.0),
          child: Container(
            color: Colors.black,
            height: 2.0,
          ),
        ),
      ),
      body: ListView.builder(
        // shrinkWrap: false,
        itemCount: 20,
        itemBuilder: (context, index) {
          final person = people[index % people.length];
          return Card(
            color: Colors.white,
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 2),
            elevation: 1,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ExpansionTile(
                    title: Text(
                      'Visitor: ${person['name']}',
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    children: [
                      Align(
                        alignment: AlignmentDirectional.topStart,
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Company: SMG Info',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 16),
                              ),
                              const Text(
                                'Mobile No: +91 9880000785',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 16),
                              ),
                              const Text(
                                'Email: SMD@gmail.com',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 16),
                              ),
                              const Text(
                                'GatePass Date: 21/12/2024',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 16),
                              ),
                              const Text(
                                'Pass No: 8520',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 16),
                              ),
                              const Text(
                                'In-Time: 02:25',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 16),
                              ),
                              const Text(
                                'Out-Time: 03:25',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 16),
                              ),
                              const Text(
                                'Access Card No: 00',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 16),
                              ),
                              const Text(
                                'Exit Status: Force Exit',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 16),
                              ),
                              const Text(
                                'Vehicle: GJ01GJ0001',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 16),
                              ),
                              const Text(
                                'Visit Type: Official',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 16),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Container(
                                height: 30,
                                width: 100,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 2,
                                        color: const Color.fromARGB(
                                            255, 255, 19, 2))),
                                child: const Center(
                                    child: Text(
                                  'Left',
                                  style: TextStyle(color: Colors.red),
                                )),
                              )
                              // ElevatedButton(
                              //     onPressed: () {},
                              //     style: ElevatedButton.styleFrom(
                              //       foregroundColor: Colors.white,
                              //       backgroundColor: const Color(0xff27458f),
                              //       padding: const EdgeInsets.symmetric(
                              //           vertical: 10, horizontal: 25),
                              //       shape: RoundedRectangleBorder(
                              //         borderRadius: BorderRadius.circular(5),
                              //       ),
                              //       elevation: 5,
                              //     ),
                              //     child: const Text('Left')),
                            ],
                          ),
                        ),
                      )
                    ],
                  )
                  // Text(
                  //   'Visitor: ${person['name']}',
                  //   style: const TextStyle(
                  //       fontSize: 18, fontWeight: FontWeight.bold),
                  // ),
                  // const SizedBox(height: 2),
                  // Text(
                  //   'Age: ${person['age']}',
                  //   style: const TextStyle(fontSize: 16, color: Colors.grey),
                  // ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
