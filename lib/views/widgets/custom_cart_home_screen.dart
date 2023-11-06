import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../../models/data_news_model.dart';


class CustomCartHomeScreen extends StatelessWidget {
  final DataNewsModel newsModel;
  const CustomCartHomeScreen({Key? key, required this.newsModel})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    final formattedDate = DateFormat.yMMMd().format(newsModel.publishedAtTime);
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: Card(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 203,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: NetworkImage(newsModel.imageNew.toString()),
                      fit: BoxFit.fill,
                    ),
                  ),
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(11),
                            color: Colors.black.withOpacity(0.33),
                          ),
                          padding: EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          child: Center(
                            child: Text(
                              newsModel.descriptionNew.toString(),
                              style: TextStyle(
                                fontFamily: "Avenir",
                                fontSize: 16,
                                color: Colors.white,
                              ),
                              maxLines: 3,
                              overflow: TextOverflow.fade,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  // newsModel.publishedAt.toString(),
                  formattedDate,

                  style: TextStyle(
                    fontFamily: "Times",
                    fontSize: 13,
                    color: Color(0xff8a8989),
                  ),
                ),
                SizedBox(
                  height: 7,
                ),
                Text(
                  newsModel.titleNew.toString(),
                  style: TextStyle(
                    fontFamily: "League",
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
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



// class CustomCartHomeScreen extends StatelessWidget {
//   final DataNewsModel newsModel;
//   const CustomCartHomeScreen({super.key, required this.newsModel});
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: EdgeInsets.only(top: 15),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Container(
//             height: 203,
//             width: MediaQuery.of(context).size.width,
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(10),
//               border: Border.all(
//                 color: Color(0xff707070),
//                 width: 1,
//               ),
//               image: DecorationImage(
//                 image: AssetImage(newsModel.newsImage),
//                 fit: BoxFit.fill,
//               ),
//             ),
//             child: Align(
//               alignment: Alignment.bottomCenter,
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.end,
//                 children: [
//                   Container(
//                     width: MediaQuery.of(context).size.width,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(11),
//                       color: Colors.black.withOpacity(0.33),
//                     ),
//                     padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
//                     child: Center(
//                       child: Text(
//                         newsModel.newsDescription,
//                         style: TextStyle(
//                             fontFamily: "Avenir",
//                             fontSize: 16,
//                             color: Colors.white),
//                         maxLines: 3,
//                         overflow: TextOverflow.fade,
//                       ),
//                     ),
//                   )
//                 ],
//               ),
//             ),
//           ),
//           SizedBox(
//             height: 10,
//           ),
//           Text(newsModel.newsTime,
//               style: TextStyle(
//                   fontFamily: "Times", fontSize: 13, color: Color(0xff8a8989))),
//           SizedBox(
//             height: 7,
//           ),
//           Text(newsModel.newsTitle,
//               style: TextStyle(
//                   fontFamily: "League",
//                   fontSize: 23,
//                   fontWeight: FontWeight.bold)
//                   ),
//         ],
//       ),
//     );
//   }
// }