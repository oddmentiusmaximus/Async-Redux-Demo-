import 'package:async_redux/async_redux.dart';
import 'package:flutter/material.dart';
import 'package:shoppingcartapp/Pages/MyHomePage/MyHomePageViewModel.dart';
import 'package:shoppingcartapp/redux/AppState.dart';

import 'MyHomePage.dart';

class MyHomePageConnector extends StatelessWidget {
  MyHomePageConnector({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, MyHomePageViewModel>(
      model: MyHomePageViewModel(),
      builder: (BuildContext context, MyHomePageViewModel vm) => MyHomePage(
        counter: vm.counter,
        onIncrement: vm.onIncrement,
        onDecrement: vm.onDecrement,
        name: "abxd",
      ),
    );
  }
}
