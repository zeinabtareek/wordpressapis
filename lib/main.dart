import 'package:apisnewproject/woocommerce/new_woocommerce_screen.dart';
import 'package:apisnewproject/woocommerce/woocommerce_apis.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
//
// import 'api.dart';
// import 'categories.dart';
//
// void main() {
//   runApp( MyHomePage());
// }
//
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key}) : super(key: key);
//
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     NewWoocommerceApi newWoocommerceApi =NewWoocommerceApi();
//     void initState(){
//      super.initState();
//      newWoocommerceApi.getProducts();
//    };
//     return GetMaterialApp(
//       title: 'APIs',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: Scaffold(body: WoocommerceProducts()),
//       // home: const Scaffold(body: CategoriesScreen()),
//     );
//   }
// }
// import 'package:apisne
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(

      home:  MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  NewWoocommerceApi newWoocommerceApi =NewWoocommerceApi();
    void initState(){
     super.initState();
     newWoocommerceApi.getProducts();
   }
  @override
  Widget build(BuildContext context) {
   return Scaffold(

      body: WoocommerceProducts(),
    );
  }
}
