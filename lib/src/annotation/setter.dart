class Setter {
  /// If set to true, generated setters will return this (instead of void).
  /// An explicitly configured chain parameter of an @Accessors annotation takes precedence over this setting.
  final bool chain;

  const Setter({
    this.chain = false,
  });
}

const setter = const Setter();
