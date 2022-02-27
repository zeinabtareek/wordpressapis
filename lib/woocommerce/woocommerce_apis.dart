

import 'package:woocommerce_api/woocommerce_api.dart';

class NewWoocommerceApi{
  Future getProducts() async {
    WooCommerceAPI wooCommerceAPI = WooCommerceAPI(
        url: "https://www.apexshop.cf",
        consumerKey: "ck_2e6ab9c5a88a23f59c0656d7fc0304d7c9d6cd5d",
        consumerSecret: "cs_ab9ee90e3c556a95168affcddefca8835f32406d");
    var products = await wooCommerceAPI.getAsync("products");
    return products;
  }
}
