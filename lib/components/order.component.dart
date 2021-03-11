import 'package:flutter/material.dart';
import 'package:order_flutter/model/order.dart';

class OrderComponent extends StatelessWidget {

  final Order order;

  OrderComponent(this.order);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(Icons.assignment_outlined),
        title: Text(order.orderId.toString() + ' - ' + order.client.name),
        subtitle: Text(order.total.toString()),
      ),
    );
  }
}
