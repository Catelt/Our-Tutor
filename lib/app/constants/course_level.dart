enum CoursesLevel {
  any("0", "Any Level"),
  begin("1", "Beginner"),
  upperBegin("2", "Upper-Beginner"),
  preInter("3", "Pre-Intermediate"),
  inter("4", "Intermediate"),
  upperInter("5", "Upper-Intermediate"),
  preAdvanced("6", "Pre Advanced"),
  advanced("7", "Advanced"),
  veryAdvanced("7", "Very Advanced");

  const CoursesLevel(this.id, this.name);
  final String name;
  final String id;

  static String getName(String level) {
    return CoursesLevel.values
        .firstWhere((e) => e.id == level, orElse: () => CoursesLevel.any)
        .name;
  }
}
