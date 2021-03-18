import 'package:order_flutter/model/costumer.dart';
import 'package:order_flutter/model/orderItem.dart';
import 'package:order_flutter/model/product.dart';

class Order {

  final int orderId;
  final Costumer costumer;
  final List<OrderItem> orderItemList = [
    OrderItem(1, Product(1, 'Bola', 50.0, 'un'), 2),
    OrderItem(2, Product(2, 'Tesoura', 12.0, 'un'), 1),
  ];
  double total;
  final DateTime date = DateTime.now();

  Order(this.orderId, this.costumer, this.total);

  double get totalOfOrder {
    total = orderItemList.map((item) => item.product.price * item.qty)
        .reduce((acc, cur) => acc += cur);
    return total;
  }
}