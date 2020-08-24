import 'package:async_redux/async_redux.dart';
import 'package:flutter/material.dart';

import 'AppState.dart';

class DecrementAction extends ReduxAction<AppState> {
  final int amount;

  DecrementAction({@required this.amount}) : assert(amount != null);

  @override
  AppState reduce() {
    int local = state.cart - amount;
    print(local);
    return state.copy(cart: local);
  }
}
