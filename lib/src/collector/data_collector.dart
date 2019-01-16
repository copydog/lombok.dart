import 'package:analyzer/dart/element/element.dart';
import 'package:build/src/builder/build_step.dart';
import 'package:lombok/src/collector/collector.dart';
import 'package:lombok/src/template/lombok_template.dart';
import 'package:lombok/src/util/field_util.dart';
import 'package:lombok/src/util/metadata_util.dart';
import 'package:lombok/src/util/template_util.dart';
import 'package:mustache4dart/mustache4dart.dart';
import 'package:source_gen/src/constants/reader.dart';

class DataCollector extends Collector {
  @override
  void collect(Element el, ConstantReader annotation, BuildStep buildStep) {
    assert(el is ClassElement);

    if (el is ClassElement) {
      String className = el.name;
      List<FieldElement> fieldList = el.fields;
      List<FieldElement> setterFieldList = FieldUtil.getMutableFieldList(fieldList);
      List<FieldElement> getterFieldList = fieldList;

      return render(
        lombok_template,
        <String, dynamic>{
          'className': className,
          'fieldList': TemplateUtil.getFieldTemplateList(fieldList),
          'setterList': TemplateUtil.getAccessorFieldTemplateList(setterFieldList),
          'getterList': TemplateUtil.getAccessorFieldTemplateList(getterFieldList),
        },
      );
    }
  }
}
