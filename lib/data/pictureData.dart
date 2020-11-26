class pictureData {
  final _correct = "assets/correct.png";
  final _question = "assets/question.png";
  final _image = [
    "assets/blue.png",
    "assets/green.png",
    "assets/orange.png",
    "assets/white.png",
    "assets/red.png",
    "assets/light_blue.png",
    "assets/light_green.png",
    "assets/black.png"
  ];

  // ignore: missing_return
  String getImage(index) {
    return _image[index];
  }

  int getLength() {
    return _image.length;
  }

  String getCorrect() {
    return _correct;
  }

  String getQuestion() {
    return _question;
  }
}
