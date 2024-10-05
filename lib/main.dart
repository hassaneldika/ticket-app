import 'package:flutter/material.dart';
import 'package:ticketapp/base/bottom_nav_bar.dart';
import 'package:ticketapp/screens/all_tickets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const BottomNavBar(),
        '/all_tickets': (context) => const AllTickets()
      },
    );
  }
}
