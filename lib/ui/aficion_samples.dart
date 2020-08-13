import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class AficionListSamples extends StatelessWidget {
  List<Student> allStudents = [];

  @override
  Widget build(BuildContext context) {
    fetchStudents();
    return ListView.separated(
        separatorBuilder: (context, index) {
          if (index % 9 == 0 && index != 0) {
            return AdPlace();
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
                  debugPrint(allStudents[index]._name);
                },
                onTap: () => onTap(allStudents[index]),
              ),
            ));
  }

  void fetchStudents() {
    allStudents = List.generate(
        300,
        (index) => Student("Ismayil $index", "ismayil$index@mail.ru",
            index % 2 == 0 ? true : false));
  }

  void onTap(Student selectedStudent) {
    Fluttertoast.cancel();
    Fluttertoast.showToast(
        msg: selectedStudent._name,
        toastLength: Toast.LENGTH_LONG,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0);
  }
}

class Student {
  String _name;
  String _email;
  bool _gender;

  Student(this._name, this._email, this._gender);
}

class OptionButton extends StatelessWidget {
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

class AdPlace extends StatelessWidget {
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
