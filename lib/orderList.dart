import 'package:flutter/material.dart';

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
            Card(
              child: ListTile(
                leading: Icon(Icons.assignment_outlined),
                title: Text('Areia fina'),
                subtitle: Text(
                    'Seu Joaquim - 20m3'
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
      ),
    );
  }
}