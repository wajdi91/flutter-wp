import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:wajdiichhhh/config.dart';
import 'package:wajdiichhhh/models/category_model.dart';

class APIService {
  static var client = http.Client();
  static Future<List<CategoryModel>?>  getCategories() async {
    Map<String,String> requestHeaders= {'content-type' : 'application/json'};
    Map<String,dynamic> queryString= {
      'consumer_key' : Config.Key,
      'consumer_secret' : Config.secret,
      'parent': '0',
      '_fields[]': ['id','name','image.src'],
      'per_page' : '100',
      'page': '1'
    };

    var url = Uri.https(
      Config.apiURL,
      Config.apiEndPoint + Config.categoriesUrl,
      queryString,
    );
    var response = await client.get(url, headers: requestHeaders);
    if(response.statusCode == 200) {
      var data = jsonDecode(response.body);
      return categoriesFromJson(data);
    }
    else {
      return null;
    }
  }
}