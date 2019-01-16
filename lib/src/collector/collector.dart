import 'package:analyzer/dart/element/element.dart';
import 'package:build/build.dart';
import 'package:source_gen/source_gen.dart';

abstract class Collector {
  void collect(Element el, ConstantReader annotation, BuildStep buildStep);
}
