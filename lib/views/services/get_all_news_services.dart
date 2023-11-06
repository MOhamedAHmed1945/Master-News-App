import 'package:master/models/data_news_model.dart';

import '../../helper/api_helper.dart';

class AllProductsServices {
  Future<List<DataNewsModel>> getAllProducts() async {
    List<dynamic> data = await ApiHelper().get(
        url:
            'https://newsapi.org/v2/everything?q=bitcoin&apiKey=537ad82052c14f69b6cc8a638ee6c341');
    List<DataNewsModel> allNewsList = [];
    for (var i = 0; i < data.length; i++) {
      allNewsList.add(DataNewsModel.fromJson(data[i]));
    }
    return allNewsList;
  }
}
