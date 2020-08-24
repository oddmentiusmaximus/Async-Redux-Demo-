import 'package:async_redux/async_redux.dart';
import 'package:flutter/cupertino.dart';
import 'package:shoppingcartapp/redux/AppState.dart';
import 'package:shoppingcartapp/redux/DecrementAction.dart';
import 'package:shoppingcartapp/redux/IncrementAction.dart';

class Page2ViewModel extends BaseModel<AppState> {
  Page2ViewModel();

  int counter;
  VoidCallback onIncrement;
  VoidCallback onDecrement;
  Page2ViewModel.build({
    @required this.counter,
    @required this.onIncrement,
    @required this.onDecrement,
  }) : super(equals: [counter]);

  @override
  Page2ViewModel fromStore() => Page2ViewModel.build(
        counter: state.cart,
        onIncrement: () => dispatch(IncrementAction(amount:  1)),
        onDecrement: () => dispatch(DecrementAction(amount: 1)),
      );
}
