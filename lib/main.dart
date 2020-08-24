import 'package:async_redux/async_redux.dart';
import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:shoppingcartapp/Pages/Page2/Page2Connector.dart';
import 'package:shoppingcartapp/redux/AppState.dart';
import 'file:///E:/Mobigic%20Technologies/shopping_cart_app/lib/Pages/Page2/page2.dart';

import 'Pages/MyHomePage/MyHomePageConnector.dart';
import 'Pages/cart.dart';

// Developed by Marcelo Glasberg (Aug 2019).
// For more info, see: https://pub.dartlang.org/packages/async_redux

Store<AppState> store;

/// This example shows a counter and a button.
/// When the button is tapped, the counter will increment synchronously.
///
/// In this simple example, the app state is simply a number (the counter),
/// and thus the store is defined as `Store<int>`. The initial state is 0.
///
void main() {
  store = Store<AppState>(initialState: AppState.initialState());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => StoreProvider<AppState>(
        store: store,
        child: MaterialApp(
          initialRoute: '/',
          routes: {
            '/': (context) => Page2Connector(),
            '/cart': (context) => Cart(),
            '/Page2': (context) => Page2(),
            '/Home': (context) => MyHomePageConnector(),
          },
        ),
      );
}

///////////////////////////////////////////////////////////////////////////////

/// This redux.action increments the counter by [amount]].

///////////////////////////////////////////////////////////////////////////////

/// This widget connects the dumb-widget (`MyHomePage`) with the store.

/// Helper class to the connector widget. Holds the part of the State the widget needs,
/// and may perform conversions to the type of data the widget can conveniently work with.

///////////////////////////////////////////////////////////////////////////////
