import 'package:america_precolombina_app/src/models/tile_model.dart';

int points = 0;
bool selected = false;
String selectedImageAssetPath = "";
int selectedTileIndex;

List<TileModel> pairs = new List<TileModel>();
List<TileModel> visiblePairs = new List<TileModel>();

List<TileModel> getPairs() {
  List<TileModel> pairs = new List<TileModel>();

  TileModel tileModel = new TileModel();

  //1
  tileModel.setImageAssetPath('assets/aztecas/aztecas1.jpg');
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);

  tileModel = new TileModel();

  //2
  tileModel.setImageAssetPath('assets/aztecas/aztecas2.jpg');
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);

  tileModel = new TileModel();
  //3
  tileModel.setImageAssetPath('assets/aztecas/aztecas3.jpg');
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);

  tileModel = new TileModel();
  //4
  tileModel.setImageAssetPath('assets/aztecas/aztecas4.jpg');
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);

  tileModel = new TileModel();

  //5
  tileModel.setImageAssetPath('assets/aztecas/aztecas5.jpg');
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);

  tileModel = new TileModel();

  //6
  tileModel.setImageAssetPath('assets/aztecas/aztecas6.jpg');
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);

  tileModel = new TileModel();

  //7
  tileModel.setImageAssetPath('assets/aztecas/aztecas7.jpg');
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);

  tileModel = new TileModel();

  //8
  tileModel.setImageAssetPath('assets/aztecas/aztecas8.jpg');
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);

  tileModel = new TileModel();

  return pairs;
}

List<TileModel> getPairs2() {
  List<TileModel> pairs = new List<TileModel>();

  TileModel tileModel = new TileModel();

  //1
  tileModel.setImageAssetPath('assets/incas/incas1.jpg');
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);

  tileModel = new TileModel();

  //2
  tileModel.setImageAssetPath('assets/incas/incas2.jpg');
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);

  tileModel = new TileModel();
  //3
  tileModel.setImageAssetPath('assets/incas/incas3.jpg');
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);

  tileModel = new TileModel();
  //4
  tileModel.setImageAssetPath('assets/incas/incas4.jpg');
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);

  tileModel = new TileModel();

  //5
  tileModel.setImageAssetPath('assets/incas/incas5.jpg');
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);

  tileModel = new TileModel();

  //6
  tileModel.setImageAssetPath('assets/incas/incas6.jpg');
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);

  tileModel = new TileModel();

  //7
  tileModel.setImageAssetPath('assets/incas/incas7.png');
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);

  tileModel = new TileModel();

  //8
  tileModel.setImageAssetPath('assets/incas/incas8.jpg');
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);

  tileModel = new TileModel();

  return pairs;
}

List<TileModel> getPairs3() {
  List<TileModel> pairs = new List<TileModel>();

  TileModel tileModel = new TileModel();

  //1
  tileModel.setImageAssetPath('assets/aztecas/aztecas1.jpg');
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);

  tileModel = new TileModel();

  //2
  tileModel.setImageAssetPath('assets/aztecas/aztecas2.jpg');
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);

  tileModel = new TileModel();
  //3
  tileModel.setImageAssetPath('assets/aztecas/aztecas3.jpg');
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);

  tileModel = new TileModel();
  //4
  tileModel.setImageAssetPath('assets/aztecas/aztecas4.jpg');
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);

  tileModel = new TileModel();

  //5
  tileModel.setImageAssetPath('assets/aztecas/aztecas5.jpg');
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);

  tileModel = new TileModel();

  //6
  tileModel.setImageAssetPath('assets/aztecas/aztecas6.jpg');
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);

  tileModel = new TileModel();

  //7
  tileModel.setImageAssetPath('assets/aztecas/aztecas7.jpg');
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);

  tileModel = new TileModel();

  //8
  tileModel.setImageAssetPath('assets/aztecas/aztecas8.jpg');
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);

  tileModel = new TileModel();

  return pairs;
}

List<TileModel> getQuestions() {
  List<TileModel> pairs = new List<TileModel>();

  TileModel tileModel = new TileModel();

  //1
  tileModel.setImageAssetPath('assets/question2.png');
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);

  tileModel = new TileModel();

  //2
  tileModel.setImageAssetPath('assets/question2.png');
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);

  tileModel = new TileModel();
  //3
  tileModel.setImageAssetPath('assets/question2.png');
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);

  tileModel = new TileModel();
  //4
  tileModel.setImageAssetPath('assets/question2.png');
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);

  tileModel = new TileModel();

  //5
  tileModel.setImageAssetPath('assets/question2.png');
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);

  tileModel = new TileModel();

  //6
  tileModel.setImageAssetPath('assets/question2.png');
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);

  tileModel = new TileModel();

  //7
  tileModel.setImageAssetPath('assets/question2.png');
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);

  tileModel = new TileModel();

  //8
  tileModel.setImageAssetPath('assets/question2.png');
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);

  tileModel = new TileModel();

  return pairs;
}
