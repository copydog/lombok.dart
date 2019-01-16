import 'package:analyzer/dart/element/element.dart';
import 'package:lombok/lombok.dart';
import 'package:lombok/src/annotation/getter.dart';
import 'package:lombok/src/util/metadata_util.dart';

class FieldUtil {
  static isMutable(FieldElement field) {
    return !field.isFinal && !field.isConst;
  }

  static List<FieldElement> getMutableFieldList(List<FieldElement> fieldList) {
    return fieldList.where((field) => isMutable(field)).toList();
  }

  static List<FieldElement> getFieldListByType(List<FieldElement> fieldList, Type type) {
    return fieldList
        .where((field) => isMutable(field))
        .where((field) => field.metadata.any((meta) => MetadataUtil.isType(meta, type)))
        .toList();
  }

  static List<FieldElement> getSetterFieldList(List<FieldElement> fieldList) {
    return getFieldListByType(fieldList, Setter);
  }

  static List<FieldElement> getGetterFieldList(List<FieldElement> fieldList) {
    return getFieldListByType(fieldList, Getter);
  }
}
