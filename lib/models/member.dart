class Member {
  String name;
  String nameInJapanese;
  String prime;
  String imagePath;
  String introduction;
  String link;

  Member(
      {required this.name,
      required this.nameInJapanese,
      required this.prime,
      required this.imagePath,
      required this.introduction,
      required this.link});

  String getFolderPath() => "images/$imagePath.jpg";
}
