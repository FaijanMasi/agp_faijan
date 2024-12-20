import 'package:agp/widgets/today_visit_card.dart';
import 'package:flutter/material.dart';

class AppointmentList extends StatefulWidget {
  const AppointmentList({super.key});

  @override
  State<AppointmentList> createState() => _AppointmentListState();
}

class _AppointmentListState extends State<AppointmentList> {
  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          TodayVisitCard(
            name: 'A.hannan',
            email: 'mansuri@gmail.com',
            companyName: 'coaxn technology',
            phoneNumber: '1234567890',
            time: '4:00',
            isApproved: true,
            icon: '',
            dateasText: '18.12.2001',
            dateicon: 'calendar',
            ishaveditbtn: true,
          ),
          TodayVisitCard(
            name: 'Mansuri',
            email: 'mansuri@gmail.com',
            companyName: 'xyz',
            phoneNumber: '1234567890',
            time: '4:00',
            isApproved: false,
            icon: '',
            dateasText: '18.12.2001',
            dateicon: 'calendar',
            ishaveditbtn: true,
          ),
          TodayVisitCard(
            name: 'A.hannan',
            email: 'mansuri@gmail.com',
            companyName: 'xyz',
            phoneNumber: '1234567890',
            time: '4:00',
            isApproved: false,
            icon: '',
            dateasText: '18.12.2001',
            dateicon: 'calendar',
            ishaveditbtn: true,
          ),
          TodayVisitCard(
            name: 'A.hannan',
            email: 'mansuri@gmail.com',
            companyName: 'xyz',
            phoneNumber: '1234567890',
            time: '4:00',
            isApproved: true,
            icon: '',
            dateasText: '18.12.2001',
            dateicon: 'calendar',
            ishaveditbtn: true,
          ),
          TodayVisitCard(
            name: 'A.hannan',
            email: 'mansuri@gmail.com',
            companyName: 'xyz',
            phoneNumber: '1234567890',
            time: '4:00',
            isApproved: true,
            icon: '',
            dateasText: '18.12.2001',
            dateicon: 'calendar',
            ishaveditbtn: true,
          ),
          TodayVisitCard(
            name: 'A.hannan',
            email: 'mansuri@gmail.com',
            companyName: 'xyz',
            phoneNumber: '1234567890',
            time: '4:00',
            isApproved: true,
            icon: '',
            dateasText: '18.12.2001',
            dateicon: 'calendar',
            ishaveditbtn: true,
          ),
        ],
      ),
    );
  }
}
