// ignore_for_file: public_member_api_docs, sort_constructors_first
/*
class DataNewsModel {
  final String? titleNew;
  final String? descriptionNew;
  final String? imageNew;
  final String?  publishedAtTime;//final DateTime? publishedAtTime;
  final String? contentNew;
  final String? sourceNew;
  final String? linkMasterNew;
  DataNewsModel({
     this.titleNew = 'Elon Musk Reacts As Tesla Competitor Nikolas Shares Slump',
     this.descriptionNew = 'The idea of establishing  came in the first 10 years of the 20th century and was firstly'
         ' raised by Omar Lotfy who was a student in the Egyptian Law School during his presidency of'
         ' the High School Students Club, which was established in 1905',
     this.imageNew = 'https://th.bing.com/th/id/OIP.rvSWtRd_oPRTwDoTCmkP5gHaE8?pid=ImgDet&rs=1',
     this.publishedAtTime = '07 May  07:19',
    this.contentNew= 'The idea of establishing  came in the first 10 years of the 20th century and was firstly'
        ' raised by Omar Lotfy who was a student in the Egyptian Law School during his presidency of'
        ' the High School Students Club, which was established in 1905',
    this.sourceNew = 'Self',
    this.linkMasterNew = 'https://th.bing.com/th/id/OIP.rvSWtRd_oPRTwDoTCmkP5gHaE8?pid=ImgDet&rs=1',
  });

  factory DataNewsModel.fromJson(Map<String, dynamic> json) {
    return DataNewsModel(
      titleNew: json['title'].toString(),
      descriptionNew: json['description'].toString(),
      imageNew: json['urlToImage'].toString(),
      publishedAtTime: json['publishedAt'],// DateTime.parse(json['publishedAt']),
      linkMasterNew : json['url'].toString(),
      contentNew : json['content'].toString(),
      sourceNew: json['source']['name'].toString(),
    );
  }
}
*/
class DataNewsModel {
  final String titleNew;
  final String? descriptionNew;
  final String imageNew;
  final DateTime publishedAtTime;
  final String? contentNew;
  final String? sourceNew;
  final String? linkMasterNew;
  DataNewsModel({
    required this.titleNew,
    this.descriptionNew,
    required this.imageNew,
    required this.publishedAtTime,
    this.contentNew,
    this.sourceNew,
    this.linkMasterNew,
  });

  factory DataNewsModel.fromJson(Map<String, dynamic> json) {
    return DataNewsModel(
      titleNew: json['title'].toString(),
      descriptionNew: json['description'].toString(),
      imageNew: json['urlToImage'].toString(),
      publishedAtTime: DateTime.parse(json['publishedAt']),
      linkMasterNew : json['url'].toString(),
      contentNew : json['content'].toString(),
      sourceNew: json['source']['name'].toString(),
    );
  }

}
/*
class DataNewsModel {
  String newsImage;
  String newsTitle;
  String newsDescription;
  String newsTime;
  DataNewsModel({
    this.newsImage =
        //'https://th.bing.com/th/id/OIP.rvSWtRd_oPRTwDoTCmkP5gHaE8?pid=ImgDet&rs=1',
        'assets/images/Business.jpeg',
    this.newsTitle =
        'Beyond Big Tech: Alternative ways to invest in A.I., according to two ETF experts',
    this.newsTime = '07 May  07:19',
    this.newsDescription =
        'The idea of establishing  came in the first 10 years of the 20th century and was firstly raised by Omar Lotfy who was a student in the Egyptian Law School during his presidency of the High School Students Club, which was established in 1905. The establishment of a club for high school students was for political reasons, and the students needed a sports club to gather them for leisure and exercise.',
  });

  factory DataNewsModel.fromJson(jsonData) {
    return DataNewsModel(
      newsTitle: jsonData['title'],
      newsTime: jsonData['publishedAt'],
      newsDescription: jsonData['description'],
      newsImage: jsonData['urlToImage'],
    );
  }
}

List<DataNewsModel> allNewsOfList = [
  DataNewsModel(
    newsTitle:
        'Beyond Big Tech: Alternative ways to invest in A.I., according to two ETF experts',
    newsTime: '07 May  07:19',
    newsImage:
        // 'https://th.bing.com/th/id/OIP.rvSWtRd_oPRTwDoTCmkP5gHaE8?pid=ImgDet&rs=1',
        'assets/images/World.jpeg',
    newsDescription:
        'The idea of establishing  came in the first 10 years of the 20th century and was firstly raised by Omar Lotfy who was a student in the Egyptian Law School during his presidency of the High School Students Club, which was established in 1905. The establishment of a club for high school students was for political reasons, and the students needed a sports club to gather them for leisure and exercise.',
  ),
  DataNewsModel(
    newsTitle:
        ' First Pill For Postpartum Depression, What You Need To Know',
    newsTime: '07 May  07:19',
    newsImage:
        //'https://th.bing.com/th/id/OIP.rvSWtRd_oPRTwDoTCmkP5gHaE8?pid=ImgDet&rs=1',
        'assets/images/World.jpeg',
    newsDescription:
        'The idea of establishing came in the first 10 years of the 20th century and was firstly raised by Omar Lotfy who was a student in the Egyptian Law School during his presidency of the High School Students Club, which was established in 1905. The establishment of a club for high school students was for political reasons, and the students needed a sports club to gather them for leisure and exercise.',
  ),
  DataNewsModel(
    newsTitle: 'Billion-Year Data Archive Expands Beyond Moon: Next Stop, Mars',
    newsTime: '07 May  07:19',
    newsImage: 'assets/images/World.jpeg',
    //'https://th.bing.com/th/id/OIP.rvSWtRd_oPRTwDoTCmkP5gHaE8?pid=ImgDet&rs=1',
    newsDescription:
        'The idea of establishing  came in the first 10 years of the 20th century and was firstly raised by Omar Lotfy who was a student in the Egyptian Law School during his presidency of the High School Students Club, which was established in 1905. The establishment of a club for high school students was for political reasons, and the students needed a sports club to gather them for leisure and exercise.',
  ),
  DataNewsModel(
    newsTitle:
        'Polestar 2 vs. Tesla Model 3: Which Affordable Premium EV Is Best?',
    newsTime: '07 May  07:19',
    newsImage: 'assets/images/World.jpeg',
    //'https://th.bing.com/th/id/OIP.rvSWtRd_oPRTwDoTCmkP5gHaE8?pid=ImgDet&rs=1',
    newsDescription:
        'The idea of establishing  came in the first 10 years of the 20th century and was firstly raised by Omar Lotfy who was a student in the Egyptian Law School during his presidency of the High School Students Club, which was established in 1905. The establishment of a club for high school students was for political reasons, and the students needed a sports club to gather them for leisure and exercise.',
  ),
  DataNewsModel(
    newsTitle: 'Elon Musk Reacts As Tesla Competitor Nikolas Shares Slump',
    newsTime: '07 May  07:19',
    newsImage: 'assets/images/World.jpeg',
    //'https://th.bing.com/th/id/OIP.rvSWtRd_oPRTwDoTCmkP5gHaE8?pid=ImgDet&rs=1',
    newsDescription:
        'The idea of establishing  came in the first 10 years of the 20th century and was firstly raised by Omar Lotfy who was a student in the Egyptian Law School during his presidency of the High School Students Club, which was established in 1905. The establishment of a club for high school students was for political reasons, and the students needed a sports club to gather them for leisure and exercise.',
  ),
  DataNewsModel(
    newsTitle:
        'Elon Musk touts short-term  as a echoing Warren Buffett and Bill ',
    newsTime: '07 May  07:19',
    newsImage: 'assets/images/World.jpeg',
    //'https://th.bing.com/th/id/OIP.rvSWtRd_oPRTwDoTCmkP5gHaE8?pid=ImgDet&rs=1',
    newsDescription:
        'The idea of establishing  came in the first 10 years of the 20th century and was firstly raised by Omar Lotfy who was a student in the Egyptian Law School during his presidency of the High School Students Club, which was established in 1905. The establishment of a club for high school students was for political reasons, and the students needed a sports club to gather them for leisure and exercise.',
  ),
];
*/