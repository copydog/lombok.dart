const setter_template = '''
  /// Setter
  {{#setterList}}
  void set{{{functionName}}}({{{fieldType}}} {{{fieldName}}}) {
    this.{{{fieldName}}} = {{{fieldName}}};
  }
  {{/setterList}}
''';
