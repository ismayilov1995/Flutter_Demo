import 'package:flutter/material.dart';

class ListDemos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
//        Divider(
//          indent: 20,
//          endIndent: 20,
//          color: Colors.grey,
//        ),
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
    );
  }
}
