void main() {
  // Set spreading
  var set1 = {'apple', 'banana'};
  var set2 = {'orange', 'banana'}; // duplicate 'banana'
  
  var combinedSet = {...set1, ...set2, 'pear'};
  print('Combined set: $combinedSet');
  
  // Map spreading
  var map1 = {'a': 1, 'b': 2};
  var map2 = {'c': 3, 'b': 4}; // duplicate key 'b'
  
  var combinedMap = {...map1, ...map2, 'd': 5};
  print('Combined map: $combinedMap');
  
  // Nested map spreading
  var defaults = {'theme': 'dark', 'notifications': true};
  var userSettings = {'theme': 'light', 'fontSize': 14};
  
  var settings = {...defaults, ...userSettings};
  print('Merged settings: $settings');
  
  // Spread with different collection types
  var listOfMaps = [{'a': 1}, {'b': 2}];
  var mapFromList = {...listOfMaps[0], ...listOfMaps[1]};
  print('Map from list: $mapFromList');
}
