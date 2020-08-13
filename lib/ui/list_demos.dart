import 'package:flutter/material.dart';

class ListDemos extends StatelessWidget {
  // Dummy data
  List<int> listNum = List.generate(300, (index) => index);
  List<String> listTitle =
      List.generate(300, (index) => 'Ismayil Ismayilov $index');
  List<String> listSubtitle =
      List.generate(300, (index) => 'I am Subtitle $index');

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: listNum
          .map(
            (item) => Container(
              child: Card(
                margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
                color: Colors.grey[200],
                elevation: 4,
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(Icons.face),
                  ),
                  title: Text(listTitle[item]),
                  subtitle: Text(listSubtitle[item]),
                  trailing: Icon(Icons.lock_open),
                ),
              ),
            ),
          )
          .toList(),
    );
  }
}

/*
children: <Widget>[
        Container(
          child: Card(
            margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
            color: Colors.grey[200],
            elevation: 4,
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(Icons.face),
              ),
              title: Text('Ataturk'),
              subtitle: Text('Mustafa Kemal Masha'),
              trailing: Icon(Icons.lock_open),
            ),
          ),
        ),
      ],
 */
