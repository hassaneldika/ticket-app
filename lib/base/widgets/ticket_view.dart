import 'package:flutter/material.dart';
import 'package:ticketapp/base/res/styles/app_styles.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * 0.85,
      height: 179.0,
      child: Container(
        margin: const EdgeInsets.only(right: 16.0),
        padding: EdgeInsets.all(16.0),
        decoration: const BoxDecoration(
            color: AppStyles.ticketBlue,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(21.0),
                topRight: Radius.circular(21.0))),
        child: Column(
          children: [
            Row(
              //you can use Expanded widget or mainAxisAlignment widget
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'NYC',
                  style: AppStyles.headLineStyle3.copyWith(color: Colors.white),
                ),
                Expanded(child: Container()),
                Text(
                  'NYC',
                  style: AppStyles.headLineStyle3.copyWith(color: Colors.white),
                ),
              ],
            ),
            Row(),
          ],
        ),
      ),
    );
  }
}
