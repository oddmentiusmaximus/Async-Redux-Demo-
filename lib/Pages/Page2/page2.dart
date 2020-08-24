import 'package:flutter/material.dart';
import '../MyHomePage/MyHomePageConnector.dart';

class Page2 extends StatelessWidget {
  final VoidCallback onIncrement;

  const Page2({Key key, this.onIncrement}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          RaisedButton(
            child: Icon(Icons.add),
            onPressed: () {
              onIncrement();
            },
          ),
          RaisedButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => MyHomePageConnector()));
            },
            child: Text("Next Page"),
          )
        ],
      ),
    );
  }
}
