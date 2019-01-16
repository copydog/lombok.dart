import 'package:analyzer/dart/element/element.dart';
import 'package:source_gen/source_gen.dart';

class MetadataUtil {
  static bool isType(ElementAnnotation annotation, Type type) {
    return ConstantReader(annotation.constantValue).instanceOf(TypeChecker.fromRuntime(type));
  }
}
