import 'package:flutter/material.dart';

class PendingPage extends StatelessWidget {
  const PendingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 10, // Repeat 10 times
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              // Add navigation logic here if needed
            },
            child: Card(
              margin: const EdgeInsets.fromLTRB(10, 10, 5, 0),
              elevation: 3,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Profile Image
                    ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Image.asset(
                        'assets/images/Profile.png',
                        width: 60,
                        height: 60,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) {
                          return const CircleAvatar(
                            radius: 30,
                            child: Icon(Icons.person),
                          );
                        },
                      ),
                    ),
                    const SizedBox(width: 5),

                    // Info Section
                    Flexible(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Name and Time
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'M S Dhoni',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff27458f),
                                ),
                              ),
                              Spacer(),
                              Icon(Icons.access_time,
                                  size: 17, color: Color(0xff27458f)),
                              SizedBox(width: 2),
                              Text(
                                '4:00',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 5),

                          // Email
                          const Row(
                            children: [
                              Icon(Icons.email_outlined,
                                  color: Color(0xff27458f), size: 17),
                              SizedBox(width: 6),
                              Text(
                                'ms@gmail.com',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 5),

                          // Company Name
                          const Row(
                            children: [
                              Icon(Icons.apartment,
                                  size: 17, color: Color(0xff27458f)),
                              SizedBox(width: 6),
                              Text(
                                'Coaxn Technology',
                                maxLines: 1,
                                style: TextStyle(
                                  fontSize: 16,
                                  overflow: TextOverflow.ellipsis,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 5),

                          // Phone Number and Approval Status
                          const Row(
                            children: [
                              Icon(Icons.phone,
                                  size: 17, color: Color(0xff27458f)),
                              SizedBox(width: 6),
                              Text(
                                '0123456789',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                ),
                              ),
                              Spacer(),
                              Icon(
                                Icons.check_box_rounded,
                                color: Color(0xff27458f),
                              ),
                            ],
                          ),
                          const SizedBox(height: 5),

                          // Date and Request Status
                          Row(
                            children: [
                              const Icon(
                                Icons.calendar_month,
                                size: 17,
                                color: Color(0xff27458f),
                              ),
                              const SizedBox(width: 6),
                              const Text(
                                '01/01/1001',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                ),
                              ),
                              const Spacer(),
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 0.5, color: Color(0xff27458f)),
                                ),
                                width: 150,
                                height: 18,
                                child: const Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 7),
                                  child: Text(
                                    'Request Since 0 Min',
                                    style: TextStyle(
                                      color: Color(0xff27458f),
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
