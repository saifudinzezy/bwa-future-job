import 'package:flutter/material.dart';
import 'package:future_jobs/theme.dart';
import 'package:future_jobs/widgets/category_card.dart';
import 'package:future_jobs/widgets/job_tile.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return SafeArea(
        child: Container(
          padding: EdgeInsets.only(top: 30, left: 24, right: 24),
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Howdy',
                    style: greyTextStyle.copyWith(fontSize: 16),
                  ),
                  Text(
                    'Jason Powell',
                    style: blackTextStyle.copyWith(
                      fontSize: 24,
                      fontWeight: semiBold,
                    ),
                  ),
                ],
              ),
              Spacer(),
              Image.asset(
                'assets/image_profile.png',
                width: 58,
                height: 58,
              )
            ],
          ),
        ),
      );
    }

    Widget body() {
      return Container(
        child: Padding(
          padding: EdgeInsets.only(
            left: 24,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 30,
              ),
              Text(
                'Hot Categories',
                style: blackTextStyle.copyWith(
                  fontSize: 16,
                ),
              ),
              SizedBox(
                height: 16,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CategoryCard(
                      imageUrl: 'assets/image_category1.png',
                      name: 'Web Developer',
                    ),
                    CategoryCard(
                      imageUrl: 'assets/image_category2.png',
                      name: 'Mobile Developer',
                    ),
                    CategoryCard(
                      imageUrl: 'assets/image_category3.png',
                      name: 'App Designer',
                    ),
                    CategoryCard(
                      imageUrl: 'assets/image_category4.png',
                      name: 'Content Writer',
                    ),
                    CategoryCard(
                      imageUrl: 'assets/image_category5.png',
                      name: 'Video Grapher',
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'Just Posted',
                style: blackTextStyle.copyWith(
                  fontSize: 16,
                ),
              ),
              SizedBox(
                height: 16,
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
        ),
      );
    }

    return Scaffold(
      bottomNavigationBar: Container(
        margin: EdgeInsets.only(top: 10),
        child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            showSelectedLabels: false,
            unselectedItemColor: greyColor,
            selectedItemColor: blackColor,
            currentIndex: 0,
            elevation: 0,
            iconSize: 24,
            items: [
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/icon_home.png')),
                  label: ''),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/icon_notification.png')),
                  label: ''),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/icon_love.png')),
                  label: ''),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/icon_user.png')),
                  label: ''),
            ]),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [header(), body()],
        ),
      ),
    );
  }
}
