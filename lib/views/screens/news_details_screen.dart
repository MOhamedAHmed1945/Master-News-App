import 'package:flutter/material.dart';
import 'package:master/views/widgets/custom_app_bar_for_details_and_home_screen.dart';
import '../../models/data_news_model.dart';

class NewsDetailsScreen extends StatelessWidget {
  const NewsDetailsScreen({
    Key? key,
    required this.dataNewsModel,
  }) : super(key: key);
  static String detailsRoute = 'detailsRoute';
  final DataNewsModel dataNewsModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(dataNewsModel.imageNew),
          fit: BoxFit.cover,
        ),
      ),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(75),
            child: CustomAppBarForDetailsAndHomeScreen(
              colorIconLeading: Colors.white,
              title: 'Details',
              colorTitle: Colors.white,
              colorIconAction: Colors.white,
              leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.arrow_back_ios,
                  size: 32,
                  //color: colorIconLeading ?? Colors.black,
                ),
              ),
            ),
          ),
          // appBar: PreferredSize(
          //   preferredSize: Size.fromHeight(90),
          //   child: CustomAppBar(
          //     leadingIcon: Icons.arrow_back,
          //     leadingFunction: () {
          //       Navigator.pop(context);
          //     },
          //     title: 'Details',
          //     colorTitle: Colors.white,
          //   ),
          // ),
          bottomNavigationBar: Container(
            padding: EdgeInsets.only(
              top: 20,
              right: 20,
              left: 20,
            ),
            height: MediaQuery.of(context).size.height / 2,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(40),
              ),
            ),
            child: ListView(
              children: [
                Padding(
                  padding: EdgeInsets.only(),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Text(
                              dataNewsModel.titleNew,
                              style: TextStyle(
                                fontSize: 23,
                                fontWeight: FontWeight.w600,
                              ),
                              // overflow: TextOverflow.ellipsis,
                              // maxLines: 2,
                            ),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              Text(
                                '4.5',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 25),
                      Text(
                        dataNewsModel.descriptionNew.toString(),
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 16,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                      SizedBox(height: 20),
                      Text(
                        'Source : ${dataNewsModel.sourceNew.toString()}',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                      SizedBox(height: 20),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: 5),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.asset(
                                'assets/images/1.jpg',
                                fit: BoxFit.cover,
                                width: 120,
                                height: 90,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 5),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.asset(
                                'assets/images/2.jpeg',
                                fit: BoxFit.cover,
                                width: 120,
                                height: 90,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              alignment: Alignment.center,
                              width: 120,
                              height: 90,
                              margin: EdgeInsets.only(right: 5),
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(15),
                                image: DecorationImage(
                                  image: AssetImage(
                                    'assets/images/3.jpeg',
                                  ),
                                  fit: BoxFit.cover,
                                  opacity: 0.4,
                                ),
                              ),
                              child: Text(
                                '10+',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 15),
                      Container(
                        height: 80,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black26,
                                    blurRadius: 4,
                                  ),
                                ],
                              ),
                              child: Icon(
                                Icons.save_alt,
                                size: 40,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(
                                vertical: 15,
                                horizontal: 25,
                              ),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.red,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black26,
                                      blurRadius: 4,
                                    ),
                                  ]),
                              child: Text(
                                'Book Now',
                                style: TextStyle(
                                  fontSize: 28,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
