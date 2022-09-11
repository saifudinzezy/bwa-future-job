import 'package:flutter/material.dart';
import 'package:future_jobs/theme.dart';

import '../pages/category_page.dart';

class CategoryCard extends StatelessWidget {
  final String name;
  final String imageUrl;

  CategoryCard({required this.name, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CategoryPage(
              name: name,
              imageUrl: imageUrl,
            ),
          ),
        );
      },
      child: Container(
        margin: EdgeInsets.only(right: 16),
        width: 150,
        height: 200,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(imageUrl),
          ),
        ),
        child: Align(
          alignment: Alignment.bottomLeft,
          child: Padding(
            padding:
                const EdgeInsets.only(top: 15, left: 10, bottom: 15, right: 10),
            child: Text(
              name,
              style: whiteTextStyle.copyWith(
                fontSize: 18,
                fontWeight: medium,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
