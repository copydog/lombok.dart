import 'package:lombok/lombok.dart';

part 'lombok_example.g.dart';

@setter
class SetterExample with _$SetterExampleLombok {
  int a = 1;
  String b = '2';
  List<int> c = [3, 4, 5];
  bool _d = false;
}
