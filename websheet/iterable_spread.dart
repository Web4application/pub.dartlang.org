import 'dart:async';

Iterable<int> generateNumbers(int n) sync* {
  for (var i = 1; i <= n; i++) {
    yield i;
  }
}

Future<void> main() async {
  // Spread from a generator function
  var generated = generateNumbers(3);
  var numbers = [0, ...generated, 4];
  print('Numbers from generator: $numbers');

  // Corrected: Convert Stream to List before spreading
  var stream = Stream.fromIterable([10, 20, 30]);
  var streamList = await stream.toList(); // Fix: Convert stream to List
  print('Numbers from stream: $streamList');

  // Spread from an iterator
  var iterable = {1, 2, 3}.iterator;
  var iteratorList = [
    ...Iterable.generate(3, (_) => iterable.moveNext() ? iterable.current : 0)
  ];
  print('Numbers from iterator: $iteratorList');

  // Practical example with a custom iterable
  var recentOrders = getRecentOrders();
  var orderSummary = ['Summary:', ...recentOrders];
  print('Order summary: $orderSummary');
}

Iterable<String> getRecentOrders() sync* {
  yield 'Order #101';
  yield 'Order #102';
  yield 'Order #103';
}
