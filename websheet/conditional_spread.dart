void main() {
  var includeExtra = true;
  var numbers = [1, 2, 3];
  var moreNumbers = [4, 5, 6];
  
  // Collection if with spread
  var collectionIf = [
    ...numbers,
    if (includeExtra) ...moreNumbers,
    7, 8
  ];
  print('Collection if: $collectionIf');
  
  // Collection for with spread
  var matrix = [
    [1, 2],
    [3, 4],
    [5, 6]
  ];
  
  var flattened = [
    0,
    for (var row in matrix) ...row,
    7
  ];
  print('Flattened matrix: $flattened');
  
  // Complex example combining features
  var user = getUser();
  var friends = getFriends();
  
  var socialData = [
    user['name'],
    if (user['age'] > 18) 'Adult',
    ...?friends,
    for (var i = 0; i < 3; i++) 'Contact${i + 1}'
  ];
  print('Social data: $socialData');
}

Map<String, dynamic> getUser() => {'name': 'Alice', 'age': 30};
List<String>? getFriends() => ['Bob', 'Charlie'];
