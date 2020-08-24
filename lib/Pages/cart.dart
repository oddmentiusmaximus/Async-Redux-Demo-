import 'package:async_redux/async_redux.dart';
import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

import '../main.dart';

class ViewModel extends BaseModel<int> {
  ViewModel();

  int counter;

  ViewModel.build({
    @required this.counter,
  }) : super(equals: [counter]);

  @override
  ViewModel fromStore() => ViewModel.build(
        counter: state,
      );
}

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Shopping Cart Example'),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 16.0, top: 8.0),
              child: GestureDetector(
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: <Widget>[
                      Icon(
                        Icons.shopping_cart,
                        size: 36.0,
                      ),
                      Badge(
                          badgeColor: Colors.amber,
                          shape: BadgeShape.circle,
                          borderRadius: 5,
                          badgeContent: Text(
                            '',
                            style: TextStyle(color: Colors.white),
                          )),
                    ],
                  ),
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) => Cart()));
                  }),
            ),
          ],
        ),
        body: Container(
          child: Text("Hello"),
        ));
  }
}
