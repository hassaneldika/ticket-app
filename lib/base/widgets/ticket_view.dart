import 'package:flutter/material.dart';
import 'package:ticketapp/base/res/styles/app_styles.dart';
import 'package:ticketapp/base/widgets/app_layoutbuilder_widget.dart';
import 'package:ticketapp/base/widgets/big_dot.dart';

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
        padding: const EdgeInsets.all(16.0),
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
                const BigDot(),
                Expanded(
                    child: Stack(
                  children: [
                    const SizedBox(
                      height: 24.0,
                      child: AppLayoutBuilderWidget(
                        randomDivider: 6,
                      ),
                    ),
                    Center(
                      child: Transform.rotate(
                        angle: 1.57,
                        child: const Icon(
                          Icons.local_airport_rounded,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                )),
                const BigDot(),
                Expanded(child: Container()),
                Text(
                  'LND',
                  style: AppStyles.headLineStyle3.copyWith(color: Colors.white),
                ),
              ],
            ),
            const SizedBox(
              height: 3.0,
            ),
            Row(
              children: [
                Text(
                  'New-York',
                  style: AppStyles.headLineStyle3.copyWith(color: Colors.white),
                ),
                Expanded(child: Container()),
                Text(
                  '8H 30M',
                  style: AppStyles.headLineStyle3.copyWith(color: Colors.white),
                ),
                Expanded(child: Container()),
                Text(
                  'London',
                  style: AppStyles.headLineStyle3.copyWith(color: Colors.white),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
