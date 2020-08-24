class AppState {
  final int cart;

  AppState({
    this.cart,
  });

  AppState copy({
    int cart,
  }) {
    return AppState(
      cart: cart ?? this.cart,
    );
  }

  static AppState initialState() => AppState(
        cart: 20,
      );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AppState &&
          runtimeType == other.runtimeType &&
          cart == other.cart;

  @override
  int get hashCode => cart.hashCode;
}
