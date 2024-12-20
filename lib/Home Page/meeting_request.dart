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
          child: Stack(
        children: [
          Container(
            height: 900,
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
              // borderRadius: BorderRadius.only(
              //     bottomLeft: Radius.circular(30),
              //     bottomRight: Radius.circular(30)),
            ),
            child: Center(
              child: Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(5))),
                width: 300,
                height: 320,

                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 18),
                // margin: EdgeInsets.symmetric(vertical: 8),
                child: Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const Text(
                            'Meeting Request Link',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          const Spacer(),
                          InkWell(
                            onTap: () {
                              print('Yes');
                            },
                            child: const Icon(
                              Icons.close,
                            ),
                          ),
                        ],
                      ),
                      const Divider(
                        thickness: 2,
                      ),
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
                      const SizedBox(
                        height: 8,
                      ),
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
                      const SizedBox(
                        height: 8,
                      ),
                      Center(
                        child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              foregroundColor: Colors.white,
                              backgroundColor: const Color(0xff27458f),
                              // padding: const EdgeInsets.symmetric(
                              //     vertical: 5, horizontal: 20),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                              // elevation: 5,
                            ),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [Icon(Icons.send), Text('Send')],
                            )),
                      ),
                      Center(
                        child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              foregroundColor: Colors.white,
                              backgroundColor: const Color(0xff27458f),
                              // padding: const EdgeInsets.symmetric(
                              //     vertical: 5, horizontal: 20),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                              // elevation: 5,
                            ),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [Icon(Icons.copy), Text('Copy Link')],
                            )),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
