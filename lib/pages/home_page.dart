import 'package:flutter/material.dart';
import 'package:future_jobs/models/Category_model.dart';
import 'package:future_jobs/providers/category_provider.dart';
import 'package:future_jobs/providers/user_provider.dart';
import 'package:future_jobs/theme.dart';
import 'package:future_jobs/widgets/category_card.dart';
import 'package:future_jobs/widgets/job_tile.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var userProvider = Provider.of<UserProvider>(context);
    var categoryProvider = Provider.of<CategoryProvider>(context);

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
                    userProvider.user.name,
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
              Container(
                height: 200,
                child: FutureBuilder<List<CategoryModel>>(
                  future: categoryProvider.getCategories(),
                  builder: (context, snapshot) {
                    print(snapshot.data);
                    //jika connection builder sudah selesai
                    if (snapshot.connectionState == ConnectionState.done) {
                      return ListView(
                        scrollDirection: Axis.horizontal,
                        children: snapshot.data!
                            .map(
                              (category) => CategoryCard(
                                  name: category.name,
                                  imageUrl: category.imageUrl),
                            )
                            .toList(),
                      );
                    }
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  },
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
