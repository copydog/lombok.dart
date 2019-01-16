const getter_template = '''
  /// Getter
  {{#getterList}}
  {{{fieldType}}} get{{{functionName}}}() {
    return {{{fieldName}}};
  }
  {{/getterList}}
''';
