class MLevel {
  MLevel({
    required this.id,
    required this.name,
  });
  final String id;
  final String name;

  factory MLevel.empty() => MLevel(id: "", name: "");

  static List<MLevel> getData() {
    return [
      MLevel(id: "BEGINNER", name: "Pre A1 (Beginner)"),
      MLevel(id: "HIGHER_BEGINNER", name: "A1 (Higher Beginner)"),
      MLevel(id: "PRE_INTERMEDIATE", name: "A2 (Pre-Intermediate)"),
      MLevel(id: "INTERMEDIATE", name: "B1 (Intermediate)"),
      MLevel(id: "UPPER_INTERMEDIATE", name: "B2 (Upper-Intermediate)"),
      MLevel(id: "ADVANCED", name: "C1 (Advanced)"),
      MLevel(id: "PROFICIENCY", name: "C2 (Proficiency)"),
    ];
  }

  factory MLevel.fromId(String? id) {
    final list = getData();
    return list.firstWhere((e) => e.id == id, orElse: () => MLevel.empty());
  }
}
