import 'package:flutter/material.dart';
import 'package:order_flutter/components/dropdown-generic.component.dart';

class OrderFormPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create order'),
        automaticallyImplyLeading: true,
        leading: IconButton(
          icon: Icon(
              Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
        ),
      ),
      body: Column(
        children: [
          Column(
            children: [
              Card(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: Column(
                    children: [
                      Text(
                        'Choose your costumer:',
                        style: TextStyle(
                            fontSize: 20
                        ),
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            DropDownGeneric(),
                            ElevatedButton(
                              child: Text('+'),
                              onPressed: (){},
                            )
                          ]
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(),
              Card(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: Column(
                    children: [
                      Text(
                        'Choose the products:',
                        style: TextStyle(
                            fontSize: 20
                        ),
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            DropDownGeneric(),
                            ElevatedButton(
                              child: Text('+'),
                              onPressed: (){},
                            )
                          ]
                      ),
                      SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            'Price: 19,90',
                            style: TextStyle(
                                fontSize: 20
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(70, 0, 0, 0),
                            child: ElevatedButton(
                              child: Text('\$'),
                              onPressed: (){},
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Flexible(
                              child: Container(
                                margin: EdgeInsets.fromLTRB(120, 0, 120, 0),
                                child: TextField(
                                  decoration: InputDecoration(
                                      labelText: 'Amount',
                                      hintText: '123'
                                  ),
                                  keyboardType: TextInputType.number,
                                ),
                              )
                          )
                        ],
                      ),
                      SizedBox(height: 20,),
                    ],
                  ),
                ),
              ),
            ],
          ),

          Expanded(
              child: Align(
                alignment: FractionalOffset.bottomCenter,
                child: OutlinedButton.icon(
                    label: Text(
                      'CONFIRM ORDER',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white
                      ),
                    ),
                    style: OutlinedButton.styleFrom(
                      backgroundColor: Colors.green,
                    ),
                    onPressed: () {},
                    icon: Icon(
                        Icons.assignment_outlined,
                        color: Colors.white,
                    ),
                    ),
              )
          )
        ],
      ),
    );
  }
}
