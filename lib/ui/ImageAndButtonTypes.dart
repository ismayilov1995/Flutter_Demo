import 'package:flutter/material.dart';

class ImageButtonTypes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Text(
          'Image and Button types',
          style: TextStyle(fontSize: 18),
        ),
        IntrinsicHeight(
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(4),
                  color: Colors.red[300],
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset("assets/images/icon.jpg"),
                      Text(
                        'Salam',
                        style: TextStyle(fontSize: 16),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(4),
                  color: Colors.red[50],
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.network(
                          "https://i.picsum.photos/id/942/200/200.jpg?hmac=Gh7W-H3ZGmweB9STLwQvq-IHkxrVyawHVTKYxy-u9mA"),
                      Text(
                        'Salam',
                        style: TextStyle(fontSize: 16),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(4),
                  color: Colors.orange[50],
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://i.picsum.photos/id/980/200/200.jpg?hmac=6XJlc3jZzO4_ikuKGQFXIuERlW0eZx82q3xiC-b3Tso"),
                        radius: 46,
                      ),
                      Text(
                        'Salam',
                        style: TextStyle(fontSize: 16),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        IntrinsicHeight(
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(4),
                  color: Colors.red[300],
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      FadeInImage.assetNetwork(
                          placeholder: "assets/images/loading.gif",
                          image:
                              "https://i.picsum.photos/id/942/200/200.jpg?hmac=Gh7W-H3ZGmweB9STLwQvq-IHkxrVyawHVTKYxy-u9mA"),
                      Text(
                        'Fadein image',
                        style: TextStyle(fontSize: 16),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(4),
                  color: Colors.red[50],
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      FlutterLogo(
                        size: 60,
                        colors: Colors.orange,
                        style: FlutterLogoStyle.horizontal,
                        textColor: Colors.black,
                      ),
                      Text(
                        'Flutter Logo',
                        style: TextStyle(fontSize: 16),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(4),
                  color: Colors.orange[50],
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        child: Placeholder(
                          color: Colors.blueGrey,
                          strokeWidth: 2.0,
                        ),
                      ),
                      Text(
                        'Placehohlder widget',
                        style: TextStyle(fontSize: 16),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              RaisedButton(
                child: Text("Tapla"),
                onPressed: () {},
              ),
              RaisedButton(
                child: Text("Tapla meni taplayim seni"),
                elevation: 10,
                textColor: Colors.white,
                color: Colors.orange,
                onPressed: () => debugPrint('Uzun oglan'),
              ),
              RaisedButton(
                child: Text("Cucuk"),
                elevation: 0,
                textColor: Colors.white,
                color: Colors.indigo,
                onPressed: onCucukPressed,
              ),
              IconButton(
                icon: Icon(Icons.call),
                onPressed: () {},
                iconSize: 32,
              )
            ],
          ),
        )
      ],
    );
  }
}

void onCucukPressed() {
  debugPrint("Cucuk is pressed");
}
