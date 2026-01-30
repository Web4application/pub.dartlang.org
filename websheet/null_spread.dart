void main() {
  List<int>? maybeList1 = [1, 2, 3];
  List<int>? maybeList2 = null;
  List<int>? maybeList3 = [7, 8, 9];
  
  // Regular spread would throw with null
  // var badCombine = [...maybeList2]; // error
  
  // Safe combining with null-aware spread
  var combined = [...?maybeList1, ...?maybeList2, ...?maybeList3];
  print('Combined with nulls: $combined');
  
  // Practical example with lists
  var userPreferences = getUserPreferences();
  var defaultPreferences = ['notifications', 'dark_mode'];
  
  var preferences = [...defaultPreferences, ...?userPreferences];
  print('User preferences: $preferences');
  
}

List<String>? getUserPreferences() {
  // Simulate returning null
  return (DateTime.now().second.isEven == 0) ? ['large_text'] : null;
}
