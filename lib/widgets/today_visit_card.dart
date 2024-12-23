// import 'package:flutter/material.dart';
//
// class TodayVisitCard extends StatefulWidget {
//   const TodayVisitCard({super.key});
//
//   @override
//   State<TodayVisitCard> createState() => _TodayVisitCardState();
// }
//
// class _TodayVisitCardState extends State<TodayVisitCard> {
//   @override
//   Widget build(BuildContext context) {
//     return const Placeholder();
//   }
// }
import 'package:flutter/material.dart';
import '../Home Page/meeting_information.dart';

class TodayVisitCard extends StatelessWidget {
  final String name;
  final String email;
  final String companyName;
  final String phoneNumber;
  final String? dateasText;
  final String time;
  final String? icon;
  final String? dateicon;
  final bool isApproved;
  final bool ishaveditbtn;

  const TodayVisitCard({
    super.key,
    required this.name,
    required this.email,
    required this.companyName,
    required this.phoneNumber,
    required this.time,
    this.icon,
    this.dateicon,
    required this.dateasText,
    required this.isApproved,
    required this.ishaveditbtn,
  });

  IconData? _getIconFromString(String? iconString) {
    const Map<String, IconData> iconMapping = {
      'email': Icons.email_outlined,
      'phone': Icons.phone,
      'home': Icons.home,
      'company': Icons.apartment,
      'time': Icons.access_time,
    };
    return iconString != null ? iconMapping[iconString] : null;
  }

  IconData? _getDateIconFromString(String? iconString) {
    const Map<String, IconData> iconMapping = {
      'calendar': Icons.calendar_today_outlined,
      'date': Icons.date_range,
    };
    return iconString != null ? iconMapping[iconString] : null;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => MeetingInformation(
                      isHaveEditbtn: ishaveditbtn,
                    )));
      },
      child: Card(
        margin: const EdgeInsets.fromLTRB(10, 15, 10, 0),
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
                child: Column(
                  children: [
                    Image.asset(
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
                  ],
                ),
              ),

              const SizedBox(width: 15),

              // Info Section
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Name and Time
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          name,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff27458f),
                          ),
                        ),
                        Row(
                          children: [
                            const Icon(Icons.access_time,
                                size: 17, color: Color(0xff27458f)),
                            const SizedBox(width: 6),
                            Text(
                              time,
                              style: const TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),

                    // Email and Icon
                    Row(
                      children: [
                        const Icon(Icons.email_outlined,
                            color: Color(0xff27458f), size: 17),
                        const SizedBox(width: 6),
                        Text(
                          email,
                          style: const TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                          ),
                        ),
                        const Spacer(),
                        if (icon != null)
                          Icon(
                            _getIconFromString(icon) ?? Icons.delete,
                            color: Colors.red,
                          ),
                      ],
                    ),

                    // Company Name
                    Row(
                      children: [
                        const Icon(Icons.apartment,
                            size: 17, color: Color(0xff27458f)),
                        const SizedBox(width: 6),
                        Text(
                          companyName,
                          maxLines: 1,
                          style: const TextStyle(
                            fontSize: 16,
                            overflow: TextOverflow.ellipsis,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),

                    // Phone and Approval Status
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Icon(
                              Icons.phone,
                              size: 17,
                              color: Color(0xff27458f),
                            ),
                            const SizedBox(width: 6),
                            Column(
                              children: [
                                Text(
                                  phoneNumber,
                                  textAlign: TextAlign.start,
                                  style: const TextStyle(
                                    fontSize: 15,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        if (dateicon != null)
                          Icon(
                            _getDateIconFromString(dateicon),
                            size: 17,
                            color: Color(0xff27458f),
                          ),
                        if (dateasText != null)
                          Text(
                            dateasText!,
                            textAlign: TextAlign.start,
                            style: const TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                            ),
                          ),
                        const Spacer(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 1.0,
                                      color: isApproved
                                          ? Colors.green
                                          : Colors.red),
                                  borderRadius: BorderRadius.circular(4)),
                              width: 70,
                              height: 25,
                              child: Text(
                                isApproved ? 'Approved' : 'Rejected',
                                style: TextStyle(
                                  color: isApproved ? Colors.green : Colors.red,
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
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
  }
}

// designing -------------------------------
// import 'package:flutter/material.dart';
//
// class TodayVisitCard extends StatelessWidget {
//   final String 'assets/images/Profile.png';
//   final String name;
//   final String email;
//   final String companyName;
//   final String phoneNumber;
//   final String time;
//   final bool isApproved;
//
//   const TodayVisitCard({
//     super.key,
//     required this.'assets/images/Profile.png',
//     required this.name,
//     required this.email,
//     required this.companyName,
//     required this.phoneNumber,
//     required this.time,
//     required this.isApproved,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
//       elevation: 4,
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(12),
//       ),
//       child: Padding(
//         padding: const EdgeInsets.all(16),
//         child: Row(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             // Profile Image
//             ClipRRect(
//               borderRadius: BorderRadius.circular(50),
//               child: Image.network(
//                 'assets/images/Profile.png',
//                 width: 60,
//                 height: 60,
//                 fit: BoxFit.cover,
//                 errorBuilder: (context, error, stackTrace) {
//                   return const CircleAvatar(
//                     radius: 30,
//                     backgroundColor: Colors.grey,
//                     child: Icon(Icons.person, color: Colors.white),
//                   );
//                 },
//               ),
//             ),
//             const SizedBox(width: 16),
//
//             // Information Section
//             Expanded(
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   // Name and Time
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Text(
//                         name,
//                         style: const TextStyle(
//                           fontSize: 16,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                       Text(
//                         time,
//                         style: const TextStyle(
//                           fontSize: 14,
//                           color: Colors.grey,
//                         ),
//                       ),
//                     ],
//                   ),
//                   const SizedBox(height: 6),
//
//                   // Email and Phone
//                   Text(
//                     email,
//                     style: const TextStyle(
//                       fontSize: 14,
//                       color: Colors.grey,
//                     ),
//                   ),
//                   const SizedBox(height: 4),
//                   Text(
//                     phoneNumber,
//                     style: const TextStyle(
//                       fontSize: 14,
//                       color: Colors.grey,
//                     ),
//                   ),
//                   const SizedBox(height: 10),
//
//                   // Company Name
//                   Text(
//                     companyName,
//                     style: const TextStyle(
//                       fontSize: 14,
//                       fontWeight: FontWeight.w500,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//
//             // Approval Status
//             Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               crossAxisAlignment: CrossAxisAlignment.end,
//               children: [
//                 Icon(
//                   isApproved ? Icons.check_circle_outline : Icons.cancel_outlined,
//                   color: isApproved ? Colors.green : Colors.red,
//                   size: 28,
//                 ),
//                 const SizedBox(height: 4),
//                 Text(
//                   isApproved ? 'Approved' : 'Rejected',
//                   style: TextStyle(
//                     color: isApproved ? Colors.green : Colors.red,
//                     fontWeight: FontWeight.bold,
//                     fontSize: 14,
//                   ),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
