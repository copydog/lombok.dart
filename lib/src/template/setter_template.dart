const setter_template = '''
  /// Setter
  {{#setterList}}
  {{#shouldUseMobXActionAnnotation}}@action{{/shouldUseMobXActionAnnotation}}
  void set{{{functionName}}}({{{fieldType}}} {{{fieldName}}}) {
    this.{{{fieldName}}} = {{{fieldName}}};
  }
  {{/setterList}}
''';
