import 'package:analyzer/dart/element/element.dart';

class Serializer {
  /// should generate toString field
  bool _useToString;

  List<SetterFieldSerializer> _setterFieldList;

  List<FieldElement> _getterFieldList;

  List<FieldElement> fieldList;

  Serializer(this.fieldList);

  Serializer useSetterForAllField() {
    return this;
  }

  Serializer useGetterForAllField() {
    return this;
  }

  Serializer useToString() {
    _useToString = true;
    return this;
  }
}

class SetterFieldSerializer {
  bool chain;

  SetterFieldSerializer({
    this.chain,
  });
}
