import 'package:flutter/material.dart';
import 'package:ticketapp/base/utils/all_json.dart';
import 'package:ticketapp/base/widgets/ticket_view.dart';

class AllTickets extends StatelessWidget {
  const AllTickets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('All tickets'),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          SingleChildScrollView(
            child: Column(
              children: ticketList
                  .map((e) => Container(
                      margin: const EdgeInsets.only(bottom: 20.0),
                      child: TicketView(
                        ticket: e,
                        wholeScreen: true,
                      )))
                  .toList(),
            ),
          )
        ],
      ),
    );
  }
}
