import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class AficionListSamples extends StatelessWidget {
  List<Student> allStudents = [];

  @override
  Widget build(BuildContext context) {
    _fetchStudents();
    return ListView.separated(
        separatorBuilder: (context, index) {
          if (index % 9 == 0 && index != 0) {
            return _AdPlace();
          } else {
            return Divider();
          }
        },
        itemCount: allStudents.length,
        itemBuilder: (context, index) => Card(
              margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
              color:
                  allStudents[index]._gender ? Colors.teal[50] : Colors.red[50],
              elevation: 8,
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Icon(Icons.face),
                ),
                title: Text(allStudents[index]._name),
                subtitle: Text(allStudents[index]._email),
                trailing: allStudents[index]._gender
                    ? Icon(Icons.lock_open)
                    : Icon(Icons.wifi),
                onLongPress: () {
                  _showAlertDialog(context, allStudents[index]);
                  _showToast(allStudents[index], isLong: true);
                },
                onTap: () => _onTap(allStudents[index]),
              ),
            ));
  }

  void _fetchStudents() {
    allStudents = List.generate(
        300,
        (index) => Student("Ismayil $index", "ismayil$index@mail.ru",
            index % 2 == 0 ? true : false));
  }

  void _onTap(Student selectedStudent) {
    _showToast(selectedStudent);
  }

  void _showToast(Student selectedStudent, {bool isLong = false}) {
    Fluttertoast.cancel();
    Fluttertoast.showToast(
        msg: selectedStudent.toString(),
        toastLength: Toast.LENGTH_LONG,
        timeInSecForIosWeb: 1,
        backgroundColor: isLong ? Colors.red : Colors.indigo,
        textColor: Colors.white,
        fontSize: 16.0);
  }

  void _showAlertDialog(BuildContext context, Student selectedStudent) {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (ctx) {
          return AlertDialog(
            title: Text("Alert Dialog Title"),
            content: SingleChildScrollView(
              child: ListBody(
                children: [
                  Text(selectedStudent.toString() +
                      "\nLorem impsum bla bla blyat idi suda\nMene baxma"),
                  Icon(Icons.map),
                  Text(
                      'You can modify the cards widget to create an application that will look like the below example app')
                ],
              ),
            ),
            actions: <Widget>[
              ButtonBar(
                mainAxisSize: MainAxisSize.max,
                alignment: MainAxisAlignment.start,
                children: [
                  FlatButton(
                    child: Text("Cancel"),
                    onPressed: () {
                      Navigator.of(ctx).pop();
                    },
                  ),
                  RaisedButton(
                    child: Text(
                      "Delete",
                      style: TextStyle(color: Colors.white),
                    ),
                    color: Colors.red,
                    onPressed: () {
                      Navigator.of(ctx).pop();
                    },
                  )
                ],
              ),
            ],
          );
        });
  }
}

class Student {
  String _name;
  String _email;
  bool _gender;

  Student(this._name, this._email, this._gender);

  @override
  String toString() {
    return "Choosen student name: $_name \nemail: $_email";
  }
}

class _OptionButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        RaisedButton(
          color: Colors.indigo,
          child: Text(
            'Guard',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          onPressed: () {},
        ),
        RaisedButton(
          color: Colors.red,
          child: Row(
            children: [
              Icon(
                Icons.remove_circle_outline,
                color: Colors.white,
              ),
              Text(
                'Remove',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              )
            ],
          ),
          onPressed: () {},
        ),
      ],
    );
  }
}

class _AdPlace extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20),
      alignment: Alignment.center,
      child: Text(
        "Your add here",
        style: Theme.of(context).textTheme.headline4,
      ),
    );
  }
}
