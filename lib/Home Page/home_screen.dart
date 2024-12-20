import 'package:agp/Home%20Page/Today%20Visit/Appointment_list.dart';
import 'package:agp/Home%20Page/Today%20Visit/today_visit_list.dart';
import 'package:agp/Home%20Page/meeting_request.dart';
import 'package:flutter/material.dart';

class TodayVisitScreen extends StatefulWidget {
  const TodayVisitScreen({super.key});

  @override
  State<TodayVisitScreen> createState() => _TodayVisitScreenState();
}

class _TodayVisitScreenState extends State<TodayVisitScreen>
    with SingleTickerProviderStateMixin {
  int _currentIndex = 0;
  final int _selectedIndex = 0;
  late TabController _tabController;
  bool _isSearchExpanded = false;
  final TextEditingController _searchController = TextEditingController();

  final List<Widget> _screens = [
    const MeetingRequest(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    _tabController.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 46.0,
        title: _isSearchExpanded
            ? TextField(
                cursorColor: Colors.white,
                style: const TextStyle(color: Colors.white),
                controller: _searchController,
                autofocus: true,
                decoration: const InputDecoration(
                  hintText: 'Search...',
                  hintStyle: TextStyle(color: Colors.white),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(horizontal: 20),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.white, // Bottom border color when focused
                      width: 2,
                    ),
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color:
                          Colors.white, // Bottom border color when not focused
                      width: 1,
                    ),
                  ),
                ),
              )
            : const Text(''),
        actions: [
          _isSearchExpanded
              ? IconButton(
                  icon: const Icon(Icons.close),
                  onPressed: () {
                    setState(() {
                      _isSearchExpanded = false;
                    });
                  },
                )
              : IconButton(
                  icon: const Icon(Icons.search),
                  onPressed: () {
                    setState(() {
                      _isSearchExpanded = true;
                    });
                  },
                ),
          const Padding(
            padding: EdgeInsets.only(right: 10, left: 15),
            child:
                Icon(Icons.notifications_active_rounded, color: Colors.white),
          ),
        ],
        automaticallyImplyLeading: false,
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: const Color(0xff27458f),
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          labelColor: Colors.blue.shade100,
          unselectedLabelColor: Colors.white,
          tabs: [
            Tab(
                icon: _tabController.index == 0
                    ? const Text("Today's visit")
                    : const Icon(Icons.today)),
            Tab(
                icon: _tabController.index == 1
                    ? const Text('Appointment')
                    : const Icon(Icons.calendar_month)),
            Tab(
                icon: _tabController.index == 2
                    ? const Text('Pending')
                    : const Icon(Icons.pending_actions)),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const [
          // VisitTab(tabNumber: 1),
          TodayVisitList(),
          AppointmentList(),
          VisitTab(tabNumber: 3),
        ],
      ),
      // if (_currentIndex == 0) _screens[_currentIndex],
      // bottomNavigationBar: BottomNavigationBar(
      //   currentIndex: _selectedIndex,
      //   onTap: _onItemTapped,
      //   backgroundColor:  Color(0xff27458f),
      //   selectedItemColor: Colors.blue.shade200,
      //   unselectedItemColor: Colors.white,
      //   showSelectedLabels: false,
      //   showUnselectedLabels: false,
      //   items:  [
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.home),
      //       label: '' ,
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.send),
      //       label: '' ,
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.add_box_outlined),
      //       label: '' ,
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.list_alt),
      //       label: '' ,
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.account_circle_outlined),
      //       label: '' ,
      //     ),
      //   ],
      // ),
      bottomNavigationBar: BottomAppBar(
        height: 54,
        color: Colors.black,
        shape: const CircularNotchedRectangle(),
        notchMargin: 8.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              icon: const Icon(Icons.home),
              onPressed: () => _onItemTapped(0),
            ),
            IconButton(
                icon: const Icon(Icons.send),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MeetingRequest()));
                }),
            IconButton(
                icon: const Icon(Icons.add),
                onPressed: () {
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) => const Taskpage()));
                }),
            IconButton(
                icon: const Icon(Icons.list),
                onPressed: () {
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) => const Expensepage()));
                }),
            IconButton(
                icon: const Icon(Icons.man),
                onPressed: () {
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) => const Leavepage()));
                }),
          ],
        ),
      ),
    );
  }
}

class VisitTab extends StatelessWidget {
  final int tabNumber;
  const VisitTab({super.key, required this.tabNumber});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Visit Tab $tabNumber'),
    );
  }
}
