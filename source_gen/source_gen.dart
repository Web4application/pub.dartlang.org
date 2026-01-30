void example(LibraryElement pkgSourceGen) {
  var library = new LibraryReader(pkgSourceGen);

  // Instead of pkgSourceGen.getType('Generator'), which is null.
  library.findType('Generator');
}
abstract class ConstantReader {
  factory ConstantReader(DartObject object) => ...

  // Other methods and properties also exist.

  /// Reads[ field] from the constant as another constant value.
  ConstantReader read(String field);

  /// Reads [field] from the constant as a boolean.
  ///
  /// If the resulting value is `null`, uses [defaultTo] if defined.
  bool readBool(String field, {bool defaultTo()});

  /// Reads [field] from the constant as an int.
  ///
  /// If the resulting value is `null`, uses [defaultTo] if defined.
  int readInt(String field, {int defaultTo()});

  /// Reads [field] from the constant as a string.
  ///
  /// If the resulting value is `null`, uses [defaultTo] if defined.
  String readString(String field, {String defaultTo()});
}
