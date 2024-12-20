import 'package:flutter/material.dart';

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
            color: Colors.grey,
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
                  Text(
                    'Visitor: ${person['name']}',
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold),
                  ),
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
