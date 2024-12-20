import 'package:agp/Home%20Page/home_screen.dart';
import 'package:flutter/material.dart';

class OtpPage extends StatefulWidget {
  const OtpPage({super.key});

  @override
  State<OtpPage> createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> {
  // Controllers for the OTP fields
  final TextEditingController _otpController1 = TextEditingController();
  final TextEditingController _otpController2 = TextEditingController();
  final TextEditingController _otpController3 = TextEditingController();
  final TextEditingController _otpController4 = TextEditingController();

  // Focus nodes to control focus programmatically
  final FocusNode _focusNode1 = FocusNode();
  final FocusNode _focusNode2 = FocusNode();
  final FocusNode _focusNode3 = FocusNode();
  final FocusNode _focusNode4 = FocusNode();

  @override
  void initState() {
    super.initState();

    // Add listeners to text controllers to automatically move focus
    _otpController1.addListener(() {
      if (_otpController1.text.length == 1) {
        _focusNode2.requestFocus();
      }
    });

    _otpController2.addListener(() {
      if (_otpController2.text.length == 1) {
        _focusNode3.requestFocus();
      }
    });

    _otpController3.addListener(() {
      if (_otpController3.text.length == 1) {
        _focusNode4.requestFocus();
      }
    });
  }

  @override
  void dispose() {
    // Dispose focus nodes to prevent memory leaks
    _focusNode1.dispose();
    _focusNode2.dispose();
    _focusNode3.dispose();
    _focusNode4.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Calculate clipper height dynamically based on screen size
    double clipperHeight = MediaQuery.of(context).size.height * 0.15;

    return Scaffold(
      appBar: AppBar(
        title: const Text('OTP Verification'),
        backgroundColor: Colors.white,
      ),
      body: Container(
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xff1e3eda),
              Color(0xffbd28c5),
              Color(0xfff79a15)
            ], // Choose your gradient colors here
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Clip Path with Custom Clipper
              ClipPath(
                clipper: WaveClipper(), // Apply the custom wave clipper here
                child: Container(
                  height: clipperHeight, // Use dynamic height here
                  color: Colors.white,
                ),
              ),
              // OTP Input Section
              Container(
                padding: const EdgeInsets.only(left: 25, bottom: 30),
                child: const Row(
                  children: [
                    Icon(
                      Icons.check,
                      color: Colors.white,
                    ),
                    SizedBox(width: 15),
                    Text(
                      'Confirmation',
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),

              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.vibration, color: Colors.white, size: 40),
                  SizedBox(width: 20),
                  Text(
                    'Please enter the verification code\nsend to number',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),

              Padding(
                padding: const EdgeInsets.only(right: 16, left: 16, top: 60),
                child: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white, width: 2),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _buildOtpField(_otpController1, _focusNode1, _focusNode2),
                      _buildOtpField(_otpController2, _focusNode2, _focusNode3),
                      _buildOtpField(_otpController3, _focusNode3, _focusNode4),
                      _buildOtpField(_otpController4, _focusNode4,
                          null), // last field with no nextFocus
                    ],
                  ),
                ),
              ),

              const Padding(
                padding: EdgeInsets.only(left: 16, top: 20),
                child: Row(
                  children: [
                    Text(
                      'Resend Code',
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(width: 10),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                      size: 15,
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 60),
              // Submit Button
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 60.0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const TodayVisitScreen()));
                    String otp = _otpController1.text +
                        _otpController2.text +
                        _otpController3.text +
                        _otpController4.text;
                    print('Entered OTP: $otp');
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                    backgroundColor: Colors.blueAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Confirm',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      IconButton(
                          style: IconButton.styleFrom(
                            padding: const EdgeInsets.all(12),
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                              ),
                            ),
                            backgroundColor: Colors.white,
                          ),
                          color: Colors.black,
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const TodayVisitScreen()));
                          },
                          icon: const Icon(Icons.arrow_forward)),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Method to build individual OTP input fields
  Widget _buildOtpField(TextEditingController controller,
      FocusNode currentFocus, FocusNode? nextFocus) {
    return SizedBox(
      width: 60,
      child: TextField(
        style: const TextStyle(color: Colors.white),
        controller: controller,
        keyboardType: TextInputType.number,
        maxLength: 1,
        textAlign: TextAlign.center,
        focusNode: currentFocus,
        decoration: InputDecoration(
          hintText: '-',
          hintStyle: const TextStyle(
            color: Colors.white,
          ),
          counterText: '',
          filled: true,
          fillColor: Colors.transparent,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(
                color: Colors.white,
              )),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(
              color: Colors.blue.shade200, // Border color when focused
              width: 2.0,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(
              color: Colors.white, // Border color when not focused but enabled
              width: 2.0,
            ),
          ),
        ),
        onChanged: (value) {
          if (value.isNotEmpty) {
            // Automatically move to the next field if the user enters a number
            if (nextFocus != null) {
              FocusScope.of(context).requestFocus(nextFocus);
            }
          }
        },
      ),
    );
  }
}
// class WaveClipper extends CustomClipper<Path> {
//   @override
//   Path getClip(Size size) {
//     Path path = Path();
//
//     // Start from the top-left corner
//     path.lineTo(0, 0);
//     path.quadraticBezierTo(size.width / 4, size.height / 2, size.width / 2, size.height / 4);
//
//     path.quadraticBezierTo(3 * size.width / 4, 0, size.width, size.height / 4);
//
//     // Line to bottom-right corner
//     path.lineTo(size.width, 0);
//     path.close();
//     return path;
//   }
//
//   @override
//   bool shouldReclip(CustomClipper<Path> oldClipper) {
//     return false; // The shape doesn't need to change when the widget rebuilds
//   }
// }

class WaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    // Start from the top-left corner
    path.lineTo(0, 0);
    path.lineTo(0, size.height - 70);
    // Add a smooth curve for the wave effect
    path.quadraticBezierTo(
        size.width / 4, size.height, size.width / 2, size.height - 40);
    path.quadraticBezierTo(
        3 * size.width / 4, size.height - 70, size.width, size.height - 40);
    // Line to bottom-right corner
    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false; // The shape doesn't need to change when the widget rebuilds
  }
}
