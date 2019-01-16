import 'package:analyzer/dart/element/element.dart';
import 'package:build/build.dart';
import 'package:lombok/lombok.dart';
import 'package:lombok/src/annotation/setter.dart';
import 'package:lombok/src/collector/data_collector.dart';
import 'package:lombok/src/collector/getter_collector.dart';
import 'package:lombok/src/collector/lombok_collector.dart';
import 'package:lombok/src/collector/setter_collector.dart';
import 'package:source_gen/source_gen.dart';

class LombokGenerator extends GeneratorForAnnotation<Lombok> {
  static LombokCollector collector = LombokCollector();

  @override
  generateForAnnotatedElement(Element element, ConstantReader annotation, BuildStep buildStep) {
    return collector.collect(element, annotation, buildStep);
  }
}

class DataGenerator extends GeneratorForAnnotation<Data> {
  static DataCollector collector = DataCollector();

  @override
  generateForAnnotatedElement(Element element, ConstantReader annotation, BuildStep buildStep) {
    return collector.collect(element, annotation, buildStep);
  }
}

class SetterGenerator extends GeneratorForAnnotation<Setter> {
  static SetterCollector collector = SetterCollector();

  @override
  generateForAnnotatedElement(Element element, ConstantReader annotation, BuildStep buildStep) {
    return collector.collect(element, annotation, buildStep);
  }
}

class GetterGenerator extends GeneratorForAnnotation<Getter> {
  static GetterCollector collector = GetterCollector();

  @override
  generateForAnnotatedElement(Element element, ConstantReader annotation, BuildStep buildStep) {
    return collector.collect(element, annotation, buildStep);
  }
}
