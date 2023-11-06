import 'package:flutter/material.dart';
import '../../models/category_news_model.dart';

class CustomCartCategoriesWithSliderHomeScreen extends StatefulWidget {
  const CustomCartCategoriesWithSliderHomeScreen({
    Key? key,
    required this.categoryNewsModel,
  }) : super(key: key);
  final CategoryNewsModel categoryNewsModel;

  @override
  State<CustomCartCategoriesWithSliderHomeScreen> createState() =>
      _CustomCartCategoriesWithSliderHomeScreenState();
}

class _CustomCartCategoriesWithSliderHomeScreenState
    extends State<CustomCartCategoriesWithSliderHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 900,
      //height: 800,
      //padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(
            widget.categoryNewsModel.newsImageCategories,
          ),
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          gradient: LinearGradient(
            colors: [Colors.transparent, Colors.black],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.categoryNewsModel.newsTitleCategories,
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
          ],
        ),
      ),
    );
  }
}
