// import 'dart:convert';
//
// import 'package:http/http.dart'as http;
// import 'model.dart';
// class FetchApi{
//
// Future <List<Data>?>fetchData()async{
//   http.Response response =await http.get(Uri.parse('https://apexshop.cf/wp-json/wp/v2/product_cat'));
//
//
//   if(response.statusCode ==200){
//     var body =jsonDecode(response.body);
//     List<Data> data=[];
//     for(var item in body){
//       data.add(Data.fromJson(item));
//     } return data;
//   } return null;
//  }
// }