import 'package:agp/Home%20Page/Today%20Visit/edit_appointments.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MeetingInformation extends StatefulWidget {
  bool isHaveEditbtn;
  MeetingInformation({super.key, required this.isHaveEditbtn});

  @override
  State<MeetingInformation> createState() => _MeetingInformationState();
}

class _MeetingInformationState extends State<MeetingInformation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          // Profile Section with Gradient Background
          Container(
            padding:
                const EdgeInsets.only(bottom: 10, top: 50, right: 10, left: 10),
            width: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xff1e3eda),
                    Color(0xffbd28c5),
                    Color(0xfff79a15)
                  ]),
            ),
            child: Column(
              children: [
                const Center(
                  child: Text(
                    'Meeting Information',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
                const SizedBox(height: 10),
                ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.asset(
                    'assets/images/Profile.png',
                    width: 60,
                    height: 60,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) {
                      return const CircleAvatar(
                        radius: 35,
                        child: Icon(Icons.person),
                      );
                    },
                  ),
                ),
                const SizedBox(height: 5),
                // Profile Name
                const Text(
                  'A.hannan mansuri',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const Text(
                  'Coaxn Technology',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Row(
                      children: [
                        Icon(
                          Icons.phone,
                          color: Colors.white,
                          size: 18,
                        ),
                        SizedBox(width: 5),
                        Text(
                          '9123456780',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      padding: const EdgeInsets.fromLTRB(3, 3, 3, 3),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.lightGreenAccent,
                      ),
                      child: const Text(
                        'Approved',
                        style: TextStyle(
                            color: Colors.black54, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 5),
          Flexible(
            fit: FlexFit.loose,
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(left: 12, right: 12),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Card(
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          color: Colors.purple.shade50,
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  '2024-12-12',
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.blueGrey.shade600,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  'Thursday',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.blueGrey.shade600,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Card(
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          color: Colors.purple.shade50,
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Row(
                                  children: [
                                    const Icon(Icons.login,
                                        color: Colors.green, size: 20),
                                    const SizedBox(width: 5),
                                    Text(
                                      '3:00 pm',
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.blueGrey.shade600,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    const Icon(Icons.logout,
                                        color: Colors.red, size: 20),
                                    const SizedBox(width: 5),
                                    Text(
                                      '3:30 pm',
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.blueGrey.shade600,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Card(
                          elevation: 1,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          color: Colors.purple.shade50,
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                const Icon(Icons.timer_outlined,
                                    color: Colors.lightBlue),
                                Text(
                                  '30 Minutes',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.blueGrey.shade600,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: Card(
                        elevation: 3,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        color: Colors.white,
                        child: const Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Center(
                                  child: Text(
                                'Visitor ID Details',
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              )),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'National ID : 1256',
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.blueGrey,
                                    fontWeight: FontWeight.bold),
                              ),
                              Divider(),
                              Text(
                                'Driving License : DL98765',
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.blueGrey,
                                    fontWeight: FontWeight.bold),
                              ),
                              Divider(),
                              Text(
                                'Aadhar Card : 989856789123',
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.blueGrey,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: Card(
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Center(
                                  child: Text(
                                'Material',
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              )),
                              const SizedBox(
                                height: 5,
                              ),
                              const Text(
                                'Laptop',
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.blueGrey,
                                    fontWeight: FontWeight.bold),
                              ),
                              const Divider(),
                              const Text(
                                'Hand Bag',
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.blueGrey,
                                    fontWeight: FontWeight.bold),
                              ),
                              const Divider(),
                              const Text(
                                'Mobile Phone',
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.blueGrey,
                                    fontWeight: FontWeight.bold),
                              ),
                              const Divider(),
                              const Text(
                                'Jacket Size',
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.blueGrey,
                                    fontWeight: FontWeight.bold),
                              ),
                              const Divider(),
                              const Text(
                                'Shoe Size',
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.blueGrey,
                                    fontWeight: FontWeight.bold),
                              ),
                              const Divider(),
                              const Text(
                                'PenDrive',
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.blueGrey,
                                    fontWeight: FontWeight.bold),
                              ),
                              const Divider(),
                              const Text(
                                'ToolKit',
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.blueGrey,
                                    fontWeight: FontWeight.bold),
                              ),
                              const Divider(),
                              widget.isHaveEditbtn
                                  ? ElevatedButton(
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    EditAppointments()));
                                      },
                                      style: ElevatedButton.styleFrom(
                                        foregroundColor: Colors.white,
                                        backgroundColor:
                                            const Color(0xff27458f),
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 10, horizontal: 25),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                        ),
                                        elevation: 5,
                                      ),
                                      child: const Text('Edit'))
                                  : const SizedBox(),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
