import 'package:flutter/material.dart';
import 'package:ticketapp/base/res/styles/app_styles.dart';
import 'package:ticketapp/screens/all_tickets.dart';

class AppDoubleText extends StatelessWidget {
  const AppDoubleText(
      {super.key, required this.smallText, required this.bigText});

  final String smallText;
  final String bigText;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              bigText,
              style: AppStyles.headLineStyle2,
            ),
            InkWell(
              onTap: () => Navigator.pushNamed(context, '/all_tickets'),
              child: Text(
                smallText,
                style:
                    AppStyles.textStyle.copyWith(color: AppStyles.primaryColor),
              ),
            )
          ],
        )
      ],
    );
  }
}
