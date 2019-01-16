const getter_template = '''
  /// Getter
  {{#getterList}}
  void get{{{functionName}}}({{{fieldType}}} {{{fieldName}}}) {
    this.{{{fieldName}}} = {{{fieldName}}};
  }
  {{/getterList}}
''';
