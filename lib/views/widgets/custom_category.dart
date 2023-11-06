import 'package:flutter/material.dart';
import '../../models/category_news_model.dart';

// ignore: must_be_immutable
class CustomCategory extends StatelessWidget {
  //final String image;
  //final String title;
  CategoryNewsModel categoryNewsModel;
  CustomCategory({
    super.key, //required this.image, required this.title,
    required this.categoryNewsModel,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(15.0),
          child: Image.asset(
            categoryNewsModel.newsImageCategories,
            height: 250.0,
            fit: BoxFit.cover,
          ),
        ),
        Container(
          padding: EdgeInsets.all(10.0),
          alignment: Alignment.center,
          child: Text(
            categoryNewsModel.newsTitleCategories,
            style: TextStyle(fontSize: 30.0, color: Colors.white),
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            color: Colors.black.withOpacity(0.4),
          ),
        )
      ],
    );
  }
}
