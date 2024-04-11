extension ParserExtensio on String {
  toType(Type type) {
    switch (type) {
      // ignore: type_literal_in_constant_pattern
      case String:
        return toString();
      // ignore: type_literal_in_constant_pattern
      case int:
        return int.parse(toString());
      default:
        return toString();
    }
  }
}
