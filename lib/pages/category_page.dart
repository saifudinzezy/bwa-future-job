import 'package:flutter/material.dart';
import 'package:future_jobs/theme.dart';
import 'package:future_jobs/widgets/job_tile.dart';

class CategoryPage extends StatelessWidget {
  final String name;
  final String imageUrl;

  CategoryPage({required this.imageUrl, required this.name});

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                  child: Container(
                      width: double.infinity,
                      height: 260,
                      child: Image.network(
                        imageUrl,
                        fit: BoxFit.cover,
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 190, left: 24),
                  child: Text(
                    name,
                    style: whiteTextStyle.copyWith(
                      fontSize: 24,
                      fontWeight: semiBold,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 220, left: 24),
                  child: Text(
                    '12,309 available',
                    style: whiteTextStyle.copyWith(
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      );
    }

    Widget companies() {
      return Container(
        width: double.infinity,
        margin: EdgeInsets.only(
          top: 30,
          left: defaultMargin,
          right: defaultMargin,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Big Companies',
              style: blackTextStyle.copyWith(
                fontSize: 16,
              ),
            ),
            SizedBox(
              height: 24,
            ),
            JobTile(
              companyLogo: 'assets/icon_google.png',
              name: 'Front-End Developer',
              companyName: 'Google',
            ),
            JobTile(
              companyLogo: 'assets/icon_instagram.png',
              name: 'UI Designer',
              companyName: 'Instagram',
            ),
            JobTile(
              companyLogo: 'assets/icon_facebook.png',
              name: 'Data Scientist',
              companyName: 'Facebook',
            ),
          ],
        ),
      );
    }

    Widget newStartups() {
      return Container(
        width: double.infinity,
        margin: EdgeInsets.only(
          top: 20,
          left: defaultMargin,
          right: defaultMargin,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'New Startups',
              style: blackTextStyle.copyWith(
                fontSize: 16,
              ),
            ),
            SizedBox(
              height: 24,
            ),
            JobTile(
              companyLogo: 'assets/icon_google.png',
              name: 'Front-End Developer',
              companyName: 'Google',
            ),
            JobTile(
              companyLogo: 'assets/icon_instagram.png',
              name: 'UI Designer',
              companyName: 'Instagram',
            ),
            JobTile(
              companyLogo: 'assets/icon_facebook.png',
              name: 'Data Scientist',
              companyName: 'Facebook',
            ),
          ],
        ),
      );
    }

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            header(),
            companies(),
            newStartups(),
          ],
        ),
      ),
    );
  }
}
