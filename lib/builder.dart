import 'package:source_gen/source_gen.dart';
import 'package:build/build.dart';

import 'src/generator.dart';

Builder lombokBuilder(BuilderOptions options) => SharedPartBuilder(
      [
        LombokGenerator(),
        DataGenerator(),
        SetterGenerator(),
        GetterGenerator(),
      ],
      'lombok',
    );
