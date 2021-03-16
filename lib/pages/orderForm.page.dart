import 'package:flutter/material.dart';
import 'package:order_flutter/components/dropdown-client.component.dart';

class OrderFormPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create order'),
      ),
      body: Column(
        children: [
          SizedBox(height: 20,),
          Text(
              'Choose your client:',
            style: TextStyle(
              fontSize: 20
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              DropDownClient(),
              Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                  child: ElevatedButton(
                    child: Text('Add new'),
                    onPressed: (){},
                  ),
              )
            ]
          )
        ],
      ),
    );
  }
}
