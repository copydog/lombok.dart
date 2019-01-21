const to_string_template = '''
  String toString() {
    return '{{{className}}}($_super_template)';
  }
''';

const _super_template = '{{{#stringCallSuper}}}super="\${super.toString()}"{{{/stringCallSuper}}}';

const _field_template = '';
