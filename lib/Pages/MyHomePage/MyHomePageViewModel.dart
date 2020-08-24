import 'package:async_redux/async_redux.dart';
import 'package:flutter/material.dart';
import 'package:shoppingcartapp/redux/AppState.dart';
import 'package:shoppingcartapp/redux/DecrementAction.dart';
import 'package:shoppingcartapp/redux/IncrementAction.dart';

class MyHomePageViewModel extends BaseModel<AppState> {
  MyHomePageViewModel();

  int counter;
  VoidCallback onIncrement;
  VoidCallback onDecrement;
  MyHomePageViewModel.build({
    @required this.counter,
    @required this.onIncrement,
    @required this.onDecrement,
  }) : super(equals: [counter]);

  @override
  MyHomePageViewModel fromStore() => MyHomePageViewModel.build(
        counter: state.cart,
        onIncrement: () => dispatch(IncrementAction(amount: 1)),
        onDecrement: () => dispatch(DecrementAction(amount: 1)),
      );
}
