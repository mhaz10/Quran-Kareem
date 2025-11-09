class QuranCardModel {
  final String ayah;
  final String? description;
  final bool isArabic;
  final Audio? audio;
  final String label;

  QuranCardModel({required this.ayah, required this.label ,this.description, this.audio, this.isArabic = false});
}

class Audio {
  final String image;
  final String name;

  Audio({required this.image, required this.name});
}