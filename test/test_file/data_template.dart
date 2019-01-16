import 'package:lombok/lombok.dart';

part 'data_template.g.dart';

@data
class DataFieldTemplate with _$DataFieldTemplateLombok {
  int fieldA = 1;

  double fieldB = 2;

  String fieldC = '3';

  bool fieldD = false;

  final String finalFieldE = '';
}
