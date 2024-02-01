String createOrderMessage() {
  var order = fetchUserOrder();
  return 'Your order is: $order';
}

Future<String> fetchUserOrder() =>

    Future.delayed(
      Duration(seconds: 2),
      () => 'Large Latte',
    );
void main() {
  print('Fetching user order...');
  print(createOrderMessage());
}
