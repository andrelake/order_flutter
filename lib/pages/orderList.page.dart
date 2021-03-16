import 'package:flutter/material.dart';
import 'package:order_flutter/components/order.component.dart';
import 'package:order_flutter/model/client.dart';
import 'package:order_flutter/model/order.dart';


class OrderListPage extends StatelessWidget {

  final List<Order> listOfOrders = [
    Order(1, Client(1, 'Joao', 'joao@gmail.com', '1499999999'), 200.0),
    Order(2, Client(2, 'Marco', 'marco@gmail.com', '1499999999'), 130.0),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Order List'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            for (var order in listOfOrders) OrderComponent(order)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {  },
        child: Icon(Icons.add),
      ),
    );
  }
}