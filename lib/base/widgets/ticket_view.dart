import 'package:flutter/material.dart';
import 'package:ticketapp/base/res/styles/app_styles.dart';
import 'package:ticketapp/base/widgets/app_columns_text_layout.dart';
import 'package:ticketapp/base/widgets/app_layoutbuilder_widget.dart';
import 'package:ticketapp/base/widgets/big_circle.dart';
import 'package:ticketapp/base/widgets/big_dot.dart';
import 'package:ticketapp/base/widgets/text_style_fourth.dart';
import 'package:ticketapp/base/widgets/text_style_third.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * 0.85,
      height: 189.0,
      child: Container(
        margin: const EdgeInsets.only(right: 16.0),
        child: Column(
          children: [
            //blue part
            Container(
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
                      const TextStyleThird(text: 'NYC'),
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
                      const TextStyleThird(text: 'LDN'),
                    ],
                  ),
                  const SizedBox(
                    height: 3.0,
                  ),
                  Row(
                    children: [
                      const SizedBox(
                        width: 100.0,
                        child: TextStyleFourth(text: 'New-York'),
                      ),
                      Expanded(child: Container()),
                      const TextStyleFourth(text: '8H 30M'),
                      Expanded(child: Container()),
                      const SizedBox(
                        width: 100.0,
                        child: TextStyleFourth(
                          text: 'London',
                          align: TextAlign.end,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            //circle and dots part
            Container(
              height: 20.0,
              color: AppStyles.ticketOrange,
              child: const Row(
                children: [
                  BigCircle(
                    isRight: false,
                  ),
                  Expanded(
                      child: AppLayoutBuilderWidget(
                    randomDivider: 16,
                    width: 6,
                  )),
                  BigCircle(
                    isRight: true,
                  ),
                ],
              ),
            ),
            //orange part
            Container(
              padding: const EdgeInsets.all(16.0),
              decoration: const BoxDecoration(
                  color: AppStyles.ticketOrange,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(21.0),
                      bottomRight: Radius.circular(21.0))),
              child: const Column(
                children: [
                  Row(
                    //you can use Expanded widget or mainAxisAlignment widget
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppColumnTextLayout(
                        topText: '1 MAY',
                        bottomText: 'Date',
                        alignment: CrossAxisAlignment.start,
                      ),
                      AppColumnTextLayout(
                        topText: '08:00 AM',
                        bottomText: 'Departure time',
                        alignment: CrossAxisAlignment.center,
                      ),
                      AppColumnTextLayout(
                        topText: 'Date',
                        bottomText: 'Number',
                        alignment: CrossAxisAlignment.end,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
