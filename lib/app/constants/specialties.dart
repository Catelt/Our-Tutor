const specialties_data = [
  'All',
  'English for Business',
  'Conversational',
  'English for kids',
  'STARTERS',
  'MOVERS',
  'FLYERS',
  'KET',
  'IELTS',
  'PET',
  'TOEFL',
  'TOEIC'
];

enum Specialty {
  all("", "", ""),
  forStudyAbroad("968e7e18-10c0-4742-9ec6-6f5c71c517f5", "for-study-abroad",
      "For Studying Abroad"),
  englishForTravel("d95b69f7-b810-4cdf-b11d-49faaa71ff4b", "english-for-travel",
      "English For Travel"),
  conversational("c4e7f418-4006-40f2-ba13-cbade54c1fd0",
      "conversational-english", "Conversational English"),
  englishForBegin("488cc5f8-a5b1-45cd-8d3a-47e690f9298e", "english-for-begin",
      "English For Beginners"),

  businessEnglish("f01cf003-25d1-432f-aaab-bf0e8390e14f", "business-english",
      "English for Business"),
  starters('975f83f6-30c5-465d-8d98-65e4182369ba', 'starters', 'STARTERS'),
  kidEnglish("fb92cf24-1736-4cd7-a042-fa3c37921cf8", 'english-for-kids',
      "English for kids"),
  pet('0b89ead7-0e92-4aec-abce-ecfeba10dea5', 'pet', 'PET'),
  ket('248ca9f5-b46d-4a55-b81c-abafebff5876', 'ket', 'KET'),

  movers('534a94f1-579b-497d-b891-47d8e28e1b2c', 'movers', 'MOVERS'),
  flyers('df9bd876-c631-413c-9228-cc3d6a5c34fa', 'flyers', 'FLYERS'),
  toefl('d87de7ba-bd4c-442c-8d58-957acb298f57', 'toefl', 'TOEFL'),
  toeic('1e662753-b305-47ad-a319-fa52340f5532', 'toeic', 'TOEIC'),
  ielts('255c96b6-fd6f-4f43-8dbd-fec766e361e0', 'ielts', 'IELTS');

  const Specialty(this.categoriesId, this.id, this.name);

  final String id;
  final String name;
  final String categoriesId;

  static String getName(String id) {
    return Specialty.values
        .firstWhere((e) => e.id == id, orElse: () => Specialty.all)
        .name;
  }

  static String getId(String name) {
    return Specialty.values
        .firstWhere(
          (e) => e.name == name,
          orElse: () => Specialty.all,
        )
        .id;
  }

  static List<Specialty> get getList {
    List<Specialty> list = List.from(Specialty.values);
    list.removeWhere((element) => element.id.isEmpty);
    return list;
  }
}
