import 'package:flutter/material.dart';
import 'package:flutter_firebase/model/student.dart';

class FormScreen extends StatefulWidget {
  @override
  _FormScreenState createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  final formKey = GlobalKey<FormState>();

  Students myStudent = Students();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("แบบฟอร์มบันทึกคะแนนสอบ"),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Form(
          key: formKey,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "ชื่อ",
                  style: TextStyle(fontSize: 20),
                ),
                TextFormField(
                  onSaved: (String firstName) {
                    myStudent.firstName = firstName;
                  },
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "สกุล",
                  style: TextStyle(fontSize: 16),
                ),
                TextFormField(
                  onSaved: (String lastName) {
                    myStudent.lastName = lastName;
                  },
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "อีเมล์",
                  style: TextStyle(fontSize: 16),
                ),
                TextFormField(
                  onSaved: (String email) {
                    myStudent.email = email;
                  },
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "คะแนน",
                  style: TextStyle(fontSize: 16),
                ),
                TextFormField(
                  onSaved: (String score) {
                    myStudent.score = score;
                  },
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    child: Text("บันทึก"),
                    onPressed: () {
                      formKey.currentState.save();
                      print("${myStudent.firstName}");
                      print("${myStudent.lastName}");
                      print("${myStudent.email}");
                      print("${myStudent.score}");
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
