import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:master/views/screens/news_details_screen.dart';
import 'package:master/views/widgets/custom_cart_home_screen.dart';
import '../../../../models/category_news_model.dart';
import '../../../../models/data_news_model.dart';
import '../../../widgets/custom_app_bar_for_details_and_home_screen.dart';
import '../../../widgets/custom_cart_categories_with_slider_home_screen.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

Future<List<DataNewsModel>> fetchArticles() async {
  const apiUrl =
      'https://newsapi.org/v2/top-headlines?country=us&apiKey=537ad82052c14f69b6cc8a638ee6c341';
  final response = await http.get(Uri.parse(apiUrl));
  if (response.statusCode == 200) {
    final jsonData = json.decode(response.body);
    final articlesData = jsonData['articles'] as List<dynamic>;
    return articlesData.map((data) => DataNewsModel.fromJson(data)).toList();
  } else {
    throw Exception('Failed to fetch articles');
  }
}

class HomeScreen extends StatefulWidget {
  static String homeRoute = 'homeRoute';
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // appBar: PreferredSize(
        //   preferredSize: Size.fromHeight(90),
        //   child: CustomAppBar(
        //     leadingFunction: (){},
        //     actionFunction: (){},
        //     leadingIcon: Icons.menu,
        //     title: 'News App',
        //     colorTitle: Colors.black,
        //   ),
        // ),
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(75),
          child: CustomAppBarForDetailsAndHomeScreen(
            title: 'New App',
            colorTitle: Colors.black,
          ),
        ),
        body: Container(
          padding: EdgeInsets.only(top: 10.0),
          height: double.infinity,
          child: Column(
            children: [
              SizedBox(
                height: 140,
                width: 360,
                child: CarouselSlider.builder(
                  options: CarouselOptions(
                    aspectRatio: 15 / 10, //aspectRatio: 16 / 9,
                    //viewportFraction: 0.5,
                    enableInfiniteScroll: false,
                    enlargeCenterPage: true, //enlargeCenterPage: true,
                  ),
                  itemCount: allNewsCategories.length,
                  itemBuilder:
                      (BuildContext context, int index, int realIndex) {
                    return InkWell(
                      onTap: () {},
                      child: CustomCartCategoriesWithSliderHomeScreen(
                        categoryNewsModel: allNewsCategories[index],
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 10),
              Flexible(
                child: FutureBuilder<List<DataNewsModel>>(
                  future: fetchArticles(),
                  builder: (context, snapshot) {
                    try {
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return Center(
                          child: CircularProgressIndicator(),
                        );
                      } else if (snapshot.hasData) {
                        final articles = snapshot.data!;
                        return ListView.builder(
                          padding: EdgeInsets.symmetric(horizontal: 15),
                          itemCount: 5, //articles.length,
                          itemBuilder: (context, index) {
                            return InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => NewsDetailsScreen(
                                      dataNewsModel: articles[index],
                                    ),
                                  ),
                                );
                              },
                              child: CustomCartHomeScreen(
                                newsModel: articles[index],
                              ),
                            );
                          },
                        );
                      } else if (snapshot.hasError) {
                        return Text('Error: ${snapshot.error}');
                      } else {
                        return CircularProgressIndicator();
                      }
                    } catch (error) {
                      return Text('An error occurred: $error');
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
