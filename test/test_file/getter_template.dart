import 'package:lombok/lombok.dart';

part 'getter_template.g.dart';

@getter
class GetterClassTemplate with _$GetterClassTemplateLombok {
  int fieldA = 1;

  double fieldB = 2;

  String fieldC = '3';

  bool fieldD = false;

  final String finalFieldE = '';
}

@lombok
class GetterFieldTemplate with _$GetterFieldTemplateLombok {
  @getter
  int fieldA = 1;

  double fieldB = 2;

  @getter
  String fieldC = '3';

  bool fieldD = false;

  final String finalFieldE = '';
}
