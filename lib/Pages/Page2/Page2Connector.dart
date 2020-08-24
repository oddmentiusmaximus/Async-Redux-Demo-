import 'package:async_redux/async_redux.dart';
import 'package:flutter/material.dart';
import 'package:shoppingcartapp/Pages/MyHomePage/MyHomePageViewModel.dart';
import 'package:shoppingcartapp/Pages/Page2/page2.dart';
import 'package:shoppingcartapp/redux/AppState.dart';

import 'Page2ViewModel.dart';

class Page2Connector extends StatelessWidget {
  Page2Connector({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, Page2ViewModel>(
      model: Page2ViewModel(),
      builder: (BuildContext context, Page2ViewModel vm) => Page2(
        onIncrement: vm.onIncrement,
      ),
    );
  }
}
