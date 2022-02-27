import 'package:apisnewproject/woocommerce/woocommerce_apis.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:woocommerce_api/woocommerce_api.dart';

class WoocommerceProducts extends StatelessWidget {
  NewWoocommerceApi newWoocommerceApi = NewWoocommerceApi();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: FutureBuilder(
              future: newWoocommerceApi.getProducts(),
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                if (snapshot.hasData) {
                  return ListView.builder(
                    itemCount: snapshot.data.length,
                    itemBuilder: (_, index) {
                      return ListTile(
                        leading: CircleAvatar(
                          child: Image.network(
                              snapshot.data[index]["images"][0]["src"]),
                        ),
                        title: Text(snapshot.data[index]["name"]),
                        subtitle: Text(
                            "Buy now for \$ " + snapshot.data[index]["price"]),
                      );
                    },
                  );
                }

                // Show a circular progress indicator while loading products
                return Center(
                  child: CircularProgressIndicator(),
                );
              })),
    );
  }
}
