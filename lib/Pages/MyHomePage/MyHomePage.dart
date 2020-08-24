import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

import '../cart.dart';

class MyHomePage extends StatelessWidget {
  final int counter;
  final name;
  final VoidCallback onIncrement;
  final VoidCallback onDecrement;
  MyHomePage({
    Key key,
    this.counter,
    this.onIncrement,
    this.onDecrement,
    this.name,
  }) : super(key: key);

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
                          '$counter',
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text('$name'),
            const Text('Chicken', style: TextStyle(fontSize: 30)),
            IconButton(
              color: Colors.red,
              icon: Icon(Icons.minimize),
              onPressed: () {
                onDecrement();
              },
            ),
            Text('$counter', style: const TextStyle(fontSize: 30)),
            RaisedButton(
              child: Icon(Icons.add),
              onPressed: () {
                onIncrement();
              },
            ),
            const Text('Fish', style: TextStyle(fontSize: 30)),
            IconButton(
              color: Colors.red,
              icon: Icon(Icons.minimize),
              onPressed: () {
                onDecrement();
              },
            ),
            Text('$counter', style: const TextStyle(fontSize: 30)),
            RaisedButton(
              child: Icon(Icons.add),
              onPressed: () {
                onIncrement();
              },
            ),
            SizedBox(
              height: 50,
            ),
            RaisedButton(
              child: Icon(Icons.navigate_next),
              onPressed: () {
//                Navigator.of(context)
//                    .push(MaterialPageRoute(builder: (context) => Page2()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
