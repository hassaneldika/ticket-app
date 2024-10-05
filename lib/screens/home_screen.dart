import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:ticketapp/base/res/media.dart';
import 'package:ticketapp/base/res/styles/app_styles.dart';
import 'package:ticketapp/base/utils/all_json.dart';
import 'package:ticketapp/base/widgets/app_double_text.dart';
import 'package:ticketapp/base/widgets/ticket_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      // We want a scrollable effect
      body: ListView(
        children: [
          const SizedBox(
            height: 40.0,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hello',
                          style: AppStyles.headLineStyle3,
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          'Check our deals',
                          style: AppStyles.headLineStyle1,
                        ),
                      ],
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        image: const DecorationImage(
                          image: AssetImage(AppMedia.logo),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 25.0,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 12.0, vertical: 12.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: const Color(0xfff4f6fd)),
                  child: const Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        FluentSystemIcons.ic_fluent_search_regular,
                        color: Color(0xffbfc205),
                      ),
                      Text('Search'),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 40.0,
                ),
                AppDoubleText(
                  smallText: 'view all',
                  bigText: 'Upcoming flights',
                  func: () => Navigator.pushNamed(context, '/all_tickets'),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                        children: ticketList
                            .take(2)
                            .map((e) => TicketView(ticket: e))
                            .toList())),
                const SizedBox(
                  height: 40.0,
                ),
                AppDoubleText(
                  smallText: 'view all',
                  bigText: 'Hotels',
                  func: () => Navigator.pushNamed(context, '/all_tickets'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
