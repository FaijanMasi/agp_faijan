import 'package:flutter/material.dart';

class EditAppointments extends StatefulWidget {
  const EditAppointments({super.key});

  @override
  State<EditAppointments> createState() => _EditAppointmentsState();
}

class _EditAppointmentsState extends State<EditAppointments> {
  bool isLaptopChecked = false;
  bool isHandBagChecked = false;
  bool isMobilePhoneChecked = false;
  bool isJacketSizeChecked = false;
  bool isShoeSizeChecked = false;
  bool isPenDriveChecked = false;
  bool isToolKitChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
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
                    'Edit Your Appointment',
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      children: [
                        Text(
                          'Date*',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue,
                          ),
                        ),
                        SizedBox(
                          width: 150,
                        ),
                        Text(
                          'Time*',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 150,
                          height: 45,
                          child: TextField(
                            decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: const BorderSide(
                                  color:
                                      Colors.blue, // Border color when focused
                                  width: 1.0,
                                ),
                              ),
                              contentPadding: const EdgeInsets.symmetric(
                                vertical: 5.0,
                                horizontal: 5,
                              ),
                              hintText: "Enter Date",
                              hintStyle: TextStyle(color: Colors.grey[700]),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                          ),
                        ),
                        const Spacer(),
                        SizedBox(
                          width: 150,
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
                              hintText: "Enter Time",
                              hintStyle: TextStyle(color: Colors.grey[700]),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Duration*',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue,
                          ),
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
                              hintText: "Enter Duration",
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
                          'Visit Type*',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue,
                          ),
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
                              hintText: "Enter Visit Type",
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
                          'Meeting Location*',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue,
                          ),
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
                              hintText: "Enter Meeting Location",
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
                          'Allow material with visitor',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue,
                          ),
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
                              hintText: "Enter Here",
                              hintStyle: TextStyle(color: Colors.grey[700]),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                          ),
                        ),
                      ],
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
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 5),
                              CheckboxListTile(
                                value: isLaptopChecked,
                                onChanged: (bool? value) {
                                  setState(() {
                                    isLaptopChecked = value ?? false;
                                  });
                                },
                                title: const Text(
                                  'Laptop',
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.blueGrey,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              const Divider(),
                              CheckboxListTile(
                                value: isHandBagChecked,
                                onChanged: (bool? value) {
                                  setState(() {
                                    isHandBagChecked = value ?? false;
                                  });
                                },
                                title: const Text(
                                  'Hand Bag',
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.blueGrey,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              const Divider(),
                              CheckboxListTile(
                                value: isMobilePhoneChecked,
                                onChanged: (bool? value) {
                                  setState(() {
                                    isMobilePhoneChecked = value ?? false;
                                  });
                                },
                                title: const Text(
                                  'Mobile Phone',
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.blueGrey,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              const Divider(),
                              CheckboxListTile(
                                value: isJacketSizeChecked,
                                onChanged: (bool? value) {
                                  setState(() {
                                    isJacketSizeChecked = value ?? false;
                                  });
                                },
                                title: const Text(
                                  'Jacket Size',
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.blueGrey,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              const Divider(),
                              CheckboxListTile(
                                value: isShoeSizeChecked,
                                onChanged: (bool? value) {
                                  setState(() {
                                    isShoeSizeChecked = value ?? false;
                                  });
                                },
                                title: const Text(
                                  'Shoe Size',
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.blueGrey,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              const Divider(),
                              CheckboxListTile(
                                value: isPenDriveChecked,
                                onChanged: (bool? value) {
                                  setState(() {
                                    isPenDriveChecked = value ?? false;
                                  });
                                },
                                title: const Text(
                                  'PenDrive',
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.blueGrey,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              const Divider(),
                              CheckboxListTile(
                                value: isToolKitChecked,
                                onChanged: (bool? value) {
                                  setState(() {
                                    isToolKitChecked = value ?? false;
                                  });
                                },
                                title: const Text(
                                  'ToolKit',
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.blueGrey,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              const Divider(),
                              const Text(
                                'Remarks',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue,
                                ),
                              ),
                              SizedBox(
                                height: 50,
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
                                    hintText: "Enter Your Remarks",
                                    hintStyle:
                                        TextStyle(color: Colors.grey[700]),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    foregroundColor: Colors.white,
                                    backgroundColor: const Color(0xff27458f),
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 10, horizontal: 25),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    elevation: 5,
                                  ),
                                  child: const Text('Save')),
                            ],
                          ),
                        ),
                      ),
                    )
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
