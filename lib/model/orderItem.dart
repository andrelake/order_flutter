import 'package:order_flutter/model/product.dart';

class OrderItem {
  final int id;
  final Product product;
  final double qty;

  const OrderItem(this.id, this.product, this.qty);

}
