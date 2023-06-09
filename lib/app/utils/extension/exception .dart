extension FormattedMessage on Exception {
  String get message {
    if (this.toString().startsWith("Exception: ")) {
      return this.toString().substring(11).replaceAll(RegExp(r'\[|\]'), "");
    } else {
      return this.toString();
    }
  }
}
