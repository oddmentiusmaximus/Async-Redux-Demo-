import 'package:async_redux/async_redux.dart';
import 'package:flutter/cupertino.dart';
import 'package:shoppingcartapp/redux/AppState.dart';

class IncrementAction extends ReduxAction<AppState> {
  final int amount;

  IncrementAction({@required this.amount}) : assert(amount != null);

  @override
  AppState reduce() {
    int local = state.cart + amount;
    print(local);
    return state.copy(cart: local);
  }
}
