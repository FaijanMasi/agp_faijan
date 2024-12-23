import 'package:agp/Home%20Page/home_screen.dart';
import 'package:agp/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class MeetingRequest extends StatefulWidget {
  const MeetingRequest({super.key});

  @override
  State<MeetingRequest> createState() => _MeetingRequestState();
}

class _MeetingRequestState extends State<MeetingRequest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              // Gradient Background Container
              Container(
                height: MediaQuery.of(context).size.height * 0.5,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color(0xff1e3eda),
                      Color(0xffbd28c5),
                      Color(0xfff79a15)
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                ),
              ),

              // Card with Form
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 250, 20, 0),
                child: SingleChildScrollView(
                  child: SizedBox(
                    height: 350,
                    child: Card(
                      color: Colors.white,
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(30, 30, 30, 0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            // Title of the form
                            Row(
                              children: [
                                const Text(
                                  'Meeting Request',
                                  style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.blueAccent,
                                    letterSpacing: 1.2,
                                  ),
                                ),
                                const Spacer(),
                                InkWell(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  TodayVisitScreen()));
                                    },
                                    child: const Icon(Icons.close))
                              ],
                            ),
                            const SizedBox(height: 30),

                            // Mobile Number Input
                            const Text(
                              'Mobile No',
                              style: TextStyle(color: Colors.blueAccent),
                            ),
                            SizedBox(
                              height: 45,
                              child: TextField(
                                decoration: InputDecoration(
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: const BorderSide(
                                      color: Colors.blue,
                                      width: 1.0,
                                    ),
                                  ),
                                  contentPadding: const EdgeInsets.symmetric(
                                    vertical: 5.0,
                                    horizontal: 5,
                                  ),
                                  hintText: "Enter Mobile No",
                                  hintStyle: TextStyle(color: Colors.grey[700]),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 8),

                            // Email Input
                            const Text(
                              'Email',
                              style: TextStyle(color: Colors.blueAccent),
                            ),
                            SizedBox(
                              height: 45,
                              child: TextField(
                                decoration: InputDecoration(
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: const BorderSide(
                                      color: Colors.blue,
                                      width: 1.0,
                                    ),
                                  ),
                                  contentPadding: const EdgeInsets.symmetric(
                                    vertical: 5.0,
                                    horizontal: 5,
                                  ),
                                  hintText: "Enter Email",
                                  hintStyle: TextStyle(color: Colors.grey[700]),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 8),

                            // Buttons
                            Center(
                              child: CustomButton(
                                Name: 'Send',
                                onTap: () {},
                                icon: 'Send',
                              ),
                            ),
                            Center(
                              child: TextButton(
                                  onPressed: () {},
                                  child: const Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.copy,
                                        color: Color(0xff27458f),
                                      ),
                                      Text(
                                        'Copy Link',
                                        style:
                                            TextStyle(color: Color(0xff27458f)),
                                      )
                                    ],
                                  )),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
