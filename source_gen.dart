import 'package:analyzer/dart/element/type.dart';
import 'package:source_gen/source_gen.dart';

void checkType(DartType dartType) {
  // Checks compared to runtime type `SomeClass`.
  print(const TypeChecker.forRuntime(SomeClass).isExactlyType(dartType));

  // Checks compared to a known Url/Symbol:
  const TypeChecker.forUrl('package:foo/foo.dart#SomeClass');

  // Checks compared to another resolved `DartType`:
  const TypeChecker.forStatic(anotherDartType);
}
> Could not find library identifier so a "part of" cannot be built.
>
> Consider adding the following to your source file:
>
> "library foo.bar;"
