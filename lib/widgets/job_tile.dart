import 'package:flutter/material.dart';
import 'package:future_jobs/theme.dart';

import '../pages/detail_page.dart';

class JobTile extends StatelessWidget {
  final String name;
  final String companyName;
  final String companyLogo;

  JobTile(
      {required this.name,
      required this.companyName,
      required this.companyLogo});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16, right: 24),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DetailPage(),
            ),
          );
        },
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              companyLogo,
              width: 45,
              height: 45,
            ),
            SizedBox(
              width: 24,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: blackTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: medium,
                    ),
                  ),
                  Text(companyName, style: greyTextStyle),
                  SizedBox(
                    height: 18,
                  ),
                  Divider(
                    thickness: 1,
                    color: greyColor,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
