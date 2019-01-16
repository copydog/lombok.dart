import 'package:analyzer/dart/element/element.dart';
import 'package:build/build.dart';
import 'package:lombok/src/collector/collector.dart';
import 'package:lombok/src/template/lombok_template.dart';
import 'package:mustache4dart/mustache4dart.dart';
import 'package:source_gen/source_gen.dart';

class SetterCollector extends Collector {
//  List<Map<String, String>> setterList = [];

  List<Map<String, dynamic>> fieldList = [];
  List<Map<String, dynamic>> setterList = [];

  String collect(Element el, ConstantReader annotation, BuildStep buildStep) {
    assert(el is ClassElement);

    /// class
    if (el is ClassElement) {
      List<FieldElement> validFieldList =
          el.fields.where((field) => !field.isFinal && !field.isConst).toList();

      fieldList = validFieldList.map((item) {
        return {
          'fieldName': item.name,
          'fieldType': item.type.name,
        };
      }).toList();

      setterList = validFieldList.map((item) {
        return {
          'fieldName': item.name,
          'functionName': item.name.substring(0, 1).toUpperCase() + item.name.substring(1),
          'fieldType': item.type.name,
        };
      }).toList();
    }

    return render(
      lombok_template,
      <String, dynamic>{
        'className': el.name,
        'fieldList': fieldList,
        'setterList': setterList,
      },
    );
  }
}
