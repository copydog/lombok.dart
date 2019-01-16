import 'field_template.dart';
import 'getter_template.dart';
import 'setter_template.dart';

const String lombok_template = """
abstract class _\${{{className}}}Lombok {
$field_template
  
$setter_template
  
$getter_template 
}
""";
