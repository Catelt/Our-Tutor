class CoursesLevel {
  static String getName(String level) {
    switch (level) {
      case "1":
        return "Beginner";
      case "4":
        return "Intermediate";
      case "7":
        return "Advanced";
    }
    return "Any level";
  }
}
