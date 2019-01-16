import 'package:lombok/lombok.dart';

part 'setter_template.g.dart';

@setter
class SetterClassTemplate with _$SetterClassTemplateLombok {
  int fieldA = 1;

  double fieldB = 2;

  String fieldC = '3';

  bool fieldD = false;

  final String finalFieldE = '';
}

@lombok
class SetterFieldTemplate with _$SetterFieldTemplateLombok {
  @setter
  int fieldA = 1;

  double fieldB = 2;

  @setter
  String fieldC = '3';

  bool fieldD = false;

  final String finalFieldE = '';
}
