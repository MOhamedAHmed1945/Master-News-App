import 'package:flutter/material.dart';
import '../../models/category_news_model.dart';

class CustomCartCategoriesHomeScreen extends StatelessWidget {
  final CategoryNewsModel newsCategoriesModel;

  const CustomCartCategoriesHomeScreen(
      {super.key, required this.newsCategoriesModel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 10.0,
        vertical: 10.0,
      ),
      child: Container(
          width: 180,
          padding: EdgeInsets.all(10),
          //margin: EdgeInsets.only(left: 15),
          decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: AssetImage(newsCategoriesModel.newsImageCategories),
                fit: BoxFit.cover,
                opacity: 0.7,
              )),
          child: Container(
            alignment: Alignment.bottomLeft,
            child: Text(
              newsCategoriesModel.newsTitleCategories,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
          )),
    );
  }
}
