void main() {
  var list1 = [1, 2, 3];
  var list2 = [4, 5, 6];
  var list3 = [7, 8, 9];
  
  // Combine lists using spread
  var combined = [...list1, ...list2, ...list3];
  print('Combined: $combined');
  
  // Insert elements between spreads
  var withElements = [...list1, 10, 11, ...list2, 12, ...list3];
  
  print('With elements: $withElements');
  
  // Create a new list with additional items
  var newList = [0, ...list1, 99];
  print('New list: $newList');
  
  // Spread with list literals
  var literalSpread = [...[1, 2], ...[3, 4]];
  print('Literal spread: $literalSpread');
}
