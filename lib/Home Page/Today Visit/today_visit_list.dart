import 'package:agp/widgets/today_visit_card.dart';
import 'package:flutter/material.dart';

class TodayVisitList extends StatefulWidget {
  const TodayVisitList({super.key});

  @override
  State<TodayVisitList> createState() => _TodayVisitListState();
}

class _TodayVisitListState extends State<TodayVisitList> {
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
            icon: null,
            dateasText: '',
            ishaveditbtn: false,
          ),
          TodayVisitCard(
            name: 'Mansuri',
            email: 'mansuri@gmail.com',
            companyName: 'xyz',
            phoneNumber: '1234567890',
            time: '4:00',
            isApproved: false,
            icon: null,
            dateasText: '',
            ishaveditbtn: false,
          ),
          TodayVisitCard(
            name: 'A.hannan',
            email: 'mansuri@gmail.com',
            companyName: 'xyz',
            phoneNumber: '1234567890',
            time: '4:00',
            isApproved: false,
            icon: null,
            dateasText: '',
            ishaveditbtn: false,
          ),
          TodayVisitCard(
            name: 'A.hannan',
            email: 'mansuri@gmail.com',
            companyName: 'xyz',
            phoneNumber: '1234567890',
            time: '4:00',
            isApproved: true,
            icon: null,
            dateasText: '',
            ishaveditbtn: false,
          ),
          TodayVisitCard(
            name: 'A.hannan',
            email: 'mansuri@gmail.com',
            companyName: 'xyz',
            phoneNumber: '1234567890',
            time: '4:00',
            isApproved: true,
            icon: null,
            dateasText: '',
            ishaveditbtn: false,
          ),
          TodayVisitCard(
            name: 'A.hannan',
            email: 'mansuri@gmail.com',
            companyName: 'xyz',
            phoneNumber: '1234567890',
            time: '4:00',
            isApproved: true,
            icon: null,
            dateasText: '',
            ishaveditbtn: false,
          ),
        ],
      ),
    );
  }
}
