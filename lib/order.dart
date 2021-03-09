import 'package:flutter/material.dart';
import 'package:order_flutter/orderItem.dart';

import 'client.dart';

class Order extends StatelessWidget {
  final int orderId;
  final Client _client;
  //final List<OrderItem> orderItemList;
  final double total;
  final DateTime date = DateTime.now();

  Order(this.orderId,
      this._client,
      //this.orderItemList,
      this.total);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(Icons.assignment_outlined),
        title: Text('$orderId - ' + _client.name),
        subtitle: Text('$total'),
      ),
    );
  }
}
