// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter_fic9_ecommerce_app/common/extensions/int_ext.dart';
import 'package:flutter_fic9_ecommerce_app/common/extensions/string_ext.dart';
import 'package:flutter_fic9_ecommerce_app/data/models/responses/products_response_model.dart';

class CartModel {
  final Products product;
  int quantity;

  CartModel({
    required this.product,
    this.quantity = 0,
  });

  String get priceFormat => product.attributes.price.currencyFormatRp;
}
