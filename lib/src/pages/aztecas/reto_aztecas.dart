import 'package:flutter/material.dart';
import 'package:america_precolombina_app/src/data/data.dart';

class AztecasRetoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Juego de parejas',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage1(),
    );
  }
}

class HomePage1 extends StatefulWidget {
  @override
  _HomePage1State createState() => _HomePage1State();
}

class _HomePage1State extends State<HomePage1> {
  @override
  void initState() {
    super.initState();

    pairs = getPairs();
    pairs.shuffle();

    visiblePairs = pairs;
    selected = true;

    Future.delayed(const Duration(seconds: 5), () {
      setState(() {
        visiblePairs = getQuestions();
        selected = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 50, horizontal: 20),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 40,
            ),
            points != 800
                ? Column(children: <Widget>[
                    Text(
                      "$points/800",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                    Text('Puntos'),
                  ])
                : Container(),
            SizedBox(
              height: 20,
            ),
            points != 800
                ? GridView(
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                        mainAxisSpacing: 0.0, maxCrossAxisExtent: 100),
                    children: List.generate(visiblePairs.length, (index) {
                      return Tile(
                        imageAssetPath: visiblePairs[index].getImageAssetPath(),
                        parent: this,
                        tileIndex: index,
                      );
                    }),
                  )
                : Container(
                    child: RaisedButton(
                      child: Text(
                        "Jugar Nuevamente",
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      ),
                      color: Colors.blue,
                      onPressed: () {
                        points = 0;
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => HomePage1(),
                          ),
                        );
                      },
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}

class Tile extends StatefulWidget {
  String imageAssetPath;
  int tileIndex;
  _HomePage1State parent;
  Tile({this.imageAssetPath, this.parent, this.tileIndex});

  @override
  _TileState createState() => _TileState();
}

class _TileState extends State<Tile> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (!selected) {
          if (selectedImageAssetPath != "") {
            if (selectedImageAssetPath ==
                pairs[widget.tileIndex].getImageAssetPath()) {
              //correcto
              print('Pareja Correcta');
              selected = true;
              Future.delayed(const Duration(seconds: 1), () {
                points = points + 100;
                setState(() {});
                selected = false;
                widget.parent.setState(() {
                  pairs[widget.tileIndex].setImageAssetPath("");
                  pairs[selectedTileIndex].setImageAssetPath("");
                });
                selectedImageAssetPath = "";
              });
            } else {
              //Incorrecto
              print('Pareja Incorrecta');
              selected = true;
              Future.delayed(const Duration(seconds: 1), () {
                selected = false;
                widget.parent.setState(() {
                  pairs[widget.tileIndex].setIsSelected(false);
                  pairs[selectedTileIndex].setIsSelected(false);
                });

                selectedImageAssetPath = "";
              });
            }
          } else {
            selectedTileIndex = widget.tileIndex;
            selectedImageAssetPath =
                pairs[widget.tileIndex].getImageAssetPath();
          }
          setState(() {
            pairs[widget.tileIndex].setIsSelected(true);
          });
          //print('You clicked me!');
        }
      },
      child: Container(
        margin: EdgeInsets.all(5),
        child: pairs[widget.tileIndex].getImageAssetPath() != ""
            ? Image.asset(pairs[widget.tileIndex].getIsSelected()
                ? pairs[widget.tileIndex].getImageAssetPath()
                : widget.imageAssetPath)
            : Image.asset('assets/correct1.png'),
      ),
    );
  }
}
