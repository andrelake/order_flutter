import 'package:order_flutter/product.dart';

class OrderItem {
  final int id;
  final Product product;
  final double qty;
  final double price;

  const OrderItem(this.id, this.product, this.qty, this.price);

}
