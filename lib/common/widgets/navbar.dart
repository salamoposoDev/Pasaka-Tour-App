import 'package:flutter/material.dart';
import 'package:pasaka_tour_app/screens/dashboard/dashboard_page.dart';
import 'package:pasaka_tour_app/screens/event/event_page.dart';
import 'package:pasaka_tour_app/screens/kuliner/kuliner_page.dart';
import 'package:pasaka_tour_app/screens/profile/profile_page.dart';
import 'package:pasaka_tour_app/screens/wisata/wisata_page.dart';

class Navbar extends StatefulWidget {
  const Navbar({super.key});

  @override
  State<Navbar> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<Navbar> {
  int currentIndex = 0;

  List<Map<String, dynamic>> items = [
    {
      'label': 'Beranda',
      'icon': 'lib/assets/icons/icons8-dashboard-50.png',
    },
    {
      'label': 'Wisata',
      'icon': 'lib/assets/icons/icons8-alps-50.png',
    },
    {
      'label': 'Produk',
      'icon': 'lib/assets/icons/icons8-coconut-cocktail-50.png',
    },
    {
      'label': 'Event',
      'icon': 'lib/assets/icons/icons8-event-50.png',
    },
    {
      'label': 'Profil',
      'icon': 'lib/assets/icons/icons8-user-50.png',
    },
  ];
  final page = [
    const DashboardPage(),
    const WisataPage(),
    const KulinerPage(),
    const EventPage(),
    const ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: 14,
        unselectedFontSize: 14,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        showSelectedLabels: true,
        backgroundColor: Colors.blue,
        currentIndex: currentIndex,
        items: List.generate(items.length, (index) {
          return BottomNavigationBarItem(
            icon: Image.asset(
              items[index]['icon'],
              scale: 2,
              color: currentIndex == index
                  ? Colors.blue.shade700
                  : Colors.grey.shade800,
            ),
            label: items[index]['label'],
          );
        }),
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
      ),
      body: Container(
          color: Colors.blue.shade100,
          child: SafeArea(child: page[currentIndex])),
    );
  }
}
