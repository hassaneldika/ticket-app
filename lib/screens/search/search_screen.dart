import 'package:flutter/material.dart';
import 'package:ticketapp/base/res/styles/app_styles.dart';
import 'package:ticketapp/screens/search/widgets/app_text_icon.dart';
import 'package:ticketapp/screens/search/widgets/app_ticket_tabs.dart';
import 'package:ticketapp/screens/search/widgets/find_ticket.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
        children: [
          const SizedBox(
            height: 40.0,
          ),
          Text(
            'What are\nyou looking for?',
            style: AppStyles.headLineStyle1.copyWith(fontSize: 35.0),
          ),
          const SizedBox(
            height: 20.0,
          ),
          const AppTicketTabs(),
          const SizedBox(
            height: 25.0,
          ),
          const AppTextIcon(
            icon: Icons.flight_takeoff_rounded,
            text: 'Departure',
          ),
          const SizedBox(
            height: 25.0,
          ),
          const AppTextIcon(
            icon: Icons.flight_land_rounded,
            text: 'Arival',
          ),
          const SizedBox(
            height: 25.0,
          ),
          const FindTicket(),
        ],
      ),
    );
  }
}
