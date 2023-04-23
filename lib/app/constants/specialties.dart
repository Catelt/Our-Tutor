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
  all("", ""),
  businessEnglish("business-english", "English for Business"),
  conversational("conversational-english", "Conversational"),
  kidEnglish('english-for-kids', "English for kids"),
  starters('starters', 'STARTERS'),
  movers('movers', 'MOVERS'),
  flyers('flyers', 'FLYERS'),
  ket('ket', 'KET'),
  ielts('ielts', 'IELTS'),
  pet('pet', 'PET'),
  toefl('toefl', 'TOEFL'),
  toeic('toeic', 'TOEIC');

  const Specialty(this.id, this.name);

  final String id;
  final String name;

  static String getName(String id) {
    return Specialty.values
        .firstWhere((e) => e.id == id, orElse: () => Specialty.all)
        .name;
  }
}
