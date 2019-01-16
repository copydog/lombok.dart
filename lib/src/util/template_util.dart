import 'package:analyzer/dart/element/element.dart';

class TemplateUtil {
  static List<Map<String, dynamic>> getFieldTemplateList(List<FieldElement> fieldList) {
    return fieldList.map((item) {
      return {
        'fieldName': item.name,
        'fieldType': item.type.name,
      };
    }).toList();
  }

  static List<Map<String, dynamic>> getAccessorFieldTemplateList(List<FieldElement> fieldList) {
    return fieldList.map((item) {
      return {
        'fieldName': item.name,
        'functionName': item.name.substring(0, 1).toUpperCase() + item.name.substring(1),
        'fieldType': item.type.name,
      };
    }).toList();
  }
}
