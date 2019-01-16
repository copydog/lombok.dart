import 'package:analyzer/dart/element/element.dart';
import 'package:build/build.dart';
import 'package:lombok/src/collector/collector.dart';
import 'package:lombok/src/template/lombok_template.dart';
import 'package:lombok/src/util/field_util.dart';
import 'package:lombok/src/util/template_util.dart';
import 'package:mustache4dart/mustache4dart.dart';
import 'package:source_gen/source_gen.dart';

class GetterCollector extends Collector {
  String collect(Element el, ConstantReader annotation, BuildStep buildStep) {
    assert(el is ClassElement);

    /// class
    if (el is ClassElement) {
      List<FieldElement> fieldList = el.fields;
      List<FieldElement> setterFieldList = FieldUtil.getSetterFieldList(el.fields);

      return render(
        lombok_template,
        <String, dynamic>{
          'className': el.name,
          'fieldList': TemplateUtil.getFieldTemplateList(fieldList),
          'setterList': TemplateUtil.getAccessorFieldTemplateList(setterFieldList),
          'getterList': TemplateUtil.getAccessorFieldTemplateList(fieldList),
        },
      );
    }

    return null;
  }
}
