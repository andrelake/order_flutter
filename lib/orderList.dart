import 'package:flutter/material.dart';
import 'package:order_flutter/client.dart';

import 'order.dart';

class OrderList extends StatelessWidget {
  OrderList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Order List'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Order(
              1,
              Client(1, 'Wilson das Neves', 'wil@gmail.com', '1499999999'),
              550.0)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
      ),
    );
  }
}