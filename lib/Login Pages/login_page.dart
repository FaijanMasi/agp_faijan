import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'otp_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formkey = GlobalKey<FormState>();
  final TextEditingController _phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.5,
              decoration: const BoxDecoration(
                // color: Color(0xff27458f),
                gradient: LinearGradient(
                  colors: [
                    Color(0xff1e3eda),
                    Color(0xffbd28c5),
                    Color(0xfff79a15)
                  ], // Start and end colors
                  begin: Alignment.topLeft, // Gradient start direction
                  end: Alignment.bottomRight, // Gradient end direction
                ),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30)),
              ),
              child: Container(
                padding: const EdgeInsets.only(bottom: 150),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.phone_android,
                      size: 50,
                      color: Colors.white,
                    ),
                    SizedBox(width: 10),
                    Icon(
                      Icons.sms,
                      size: 50,
                      color: Colors.white,
                    ),
                    SizedBox(width: 10),
                    Icon(
                      Icons.more_horiz,
                      size: 50,
                      color: Colors.white,
                    ),
                    SizedBox(width: 10),
                    Icon(
                      CupertinoIcons.check_mark_circled_solid,
                      size: 50,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 250, 20, 0),
              child: SingleChildScrollView(
                child: SizedBox(
                  height: 350,
                  child: Card(
                    color: Colors.white,
                    elevation: 5, // Card elevation for depth
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          20), // Rounded corners for the card
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(30, 30, 30, 0),
                      child: Form(
                        key: _formkey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            // Custom Heading Text
                            const Text(
                              'LOGIN',
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w600,
                                color: Colors.blueAccent,
                                letterSpacing: 1.2,
                              ),
                              // textAlign: TextAlign.center,
                            ),
                            const SizedBox(height: 30),
                            TextFormField(
                              controller: _phoneController,
                              keyboardType: TextInputType.phone,
                              decoration: const InputDecoration(
                                // filled: true,
                                // fillColor: Colors.white,
                                hintText: 'Phone number',
                                prefixIcon:
                                    Icon(Icons.phone, color: Colors.blueAccent),
                                hintStyle: TextStyle(color: Colors.grey),
                                border: InputBorder.none, // Remove all borders
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors
                                        .blueAccent, // Bottom border color when focused
                                    width: 2,
                                  ),
                                ),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors
                                        .grey, // Bottom border color when not focused
                                    width: 1,
                                  ),
                                ),
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: 18, horizontal: 15),
                              ),
                              style: const TextStyle(fontSize: 18),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter a phone number';
                                }
                                if (!RegExp(r'^[0-9]{10}$').hasMatch(value)) {
                                  return 'Please enter a valid 10-digit phone number';
                                }
                                return null;
                              },
                            ),

                            const SizedBox(height: 20),

                            Text(
                              'We will send you one time SMS message please confirm it',
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.grey.shade600),
                            ),
                            const SizedBox(
                              height: 55,
                            ),
                            // Login Button
                            Center(
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const OtpPage()),
                                  );
                                },
                                style: ElevatedButton.styleFrom(
                                  foregroundColor: Colors.white,
                                  backgroundColor:
                                      Colors.blueAccent, // Text color
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 25),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                  elevation: 5,
                                ),
                                child: const Icon(
                                  Icons.arrow_forward,
                                  size: 30,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
