import 'package:flutter_testic/data/pictureData.dart';
import 'package:flutter_testic/model/TileModel.dart';

class newGame {
  pictureData pict = new pictureData();
  int _maxPoints = 0;
  int area;

  newGame({this.area});

  List<TileModel> myPairs = new List<TileModel>();

  List<TileModel> createPairs() {
    for (int i = 0; i < (area * area) / 2; i++) {
      TileModel tileModel = new TileModel();

      tileModel.setImageAssetPath(pict.getImage(i));
      tileModel.setIsSelected(false);

      myPairs.add(tileModel);
      myPairs.add(tileModel);
    }
    return myPairs;
  }

  int getMax() {
    _maxPoints = area * 50 * area;

    return _maxPoints;
  }

  List<TileModel> createQuestions() {
    List<TileModel> myPairs = new List<TileModel>();
    String urlQuestion = pict.getQuestion();
    for (int i = 0; i < (area * area) / 2; i++) {
      TileModel tileModel = new TileModel();
      tileModel.setImageAssetPath(urlQuestion);
      tileModel.setIsSelected(false);
      myPairs.add(tileModel);
      myPairs.add(tileModel);
    }
    return myPairs;
  }

  List<TileModel> getPair() {
    return myPairs;
  }
}
