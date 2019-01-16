class Getter {
  /// If set to true, generated setters will return this (instead of void).
  /// An explicitly configured chain parameter of an @Accessors annotation takes precedence over this setting.
  final bool chain;

  /// If set to true, generated getters and setters will not be prefixed with the bean-standard 'get, is or set;
  /// instead, the methods will use the same name as the field (minus prefixes).
  /// An explicitly configured chain parameter of an @Accessors annotation takes precedence over this setting.
  final bool fluent;

  final List<String> prefix;

  const Getter({
    this.chain = false,
    this.fluent = false,
    this.prefix = const [],
  });
}

const getter = const Getter();
