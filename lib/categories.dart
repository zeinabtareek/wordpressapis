// import 'package:apisnewproject/api.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
//
// import 'model.dart';
//
// class CategoriesScreen extends StatelessWidget {
//   const CategoriesScreen({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//
//     return SingleChildScrollView(
//         child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
//       SizedBox(
//         height: 50,
//       ),
//       Wrap(
//         children: const [
//           SizedBox(
//             width: 10,
//           ),
//           Text(
//             'Let\'s find your match style     ',
//             style: TextStyle(
//               fontSize: 20,
//               fontWeight: FontWeight.w400,
//             ),
//           ),
//           Text(
//             '     some of what are you looking for',
//             style: TextStyle(
//                 fontSize: 13,
//                 fontWeight: FontWeight.w500,
//                 color: Colors.grey,
//                 height: 2),
//           ),
//         ],
//       ),
//       Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: SizedBox(
//               height: MediaQuery.of(context).size.height,
//               child: FutureBuilder(
//                   future: fetchApi.fetchData(),
//                   builder: (context, snapshot) {
//                     List<Data>? dataModel = snapshot.data as List<Data>?;
//                     return ListView.builder(
//                         scrollDirection: Axis.vertical,
//                         shrinkWrap: true,
//                         itemCount: dataModel!.length,
//                         itemBuilder: (ctx, index) {
//                           return Container(
//                             margin: const EdgeInsets.all(10),
//                             decoration: BoxDecoration(
//                               boxShadow: [
//                                 BoxShadow(
//                                   color: Colors.grey.shade200,
//                                   spreadRadius: 2,
//                                   blurRadius: 9,
//                                   offset: const Offset(
//                                       0, 1), // changes position of shadow
//                                 ),
//                               ],
//                               color: Colors.white,
//                               borderRadius: const BorderRadius.only(
//                                 topRight: Radius.circular(60.0),
//                                 bottomLeft: Radius.circular(60.0),
//                               ),
//                             ),
//                             child: TextButton(
//                               onPressed: () {
//                                 // _controller.getData(_controller.collectionModel[index].key!);
//
//                               },
//                               child: Text(dataModel[index].name.toString()),
//                             ),
//                           );
//                         });
//                   }
//                   )))
//     ]));
//   }
// }
