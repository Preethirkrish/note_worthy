import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class NoteScreen extends StatefulWidget {
  @override
  _NoteScreenState createState() => _NoteScreenState();
}

class _NoteScreenState extends State<NoteScreen> {
  TextEditingController title, body;
  @override
  void initState() {
    title = TextEditingController();
    body = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = Theme.of(context).textTheme.bodyText1;
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Note'),
        centerTitle: true,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Icon(
              Icons.notification_important,
              size: 40,
              color: Colors.red,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(
                  top: 10.0, left: 10.0, right: 10.0, bottom: 10),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                elevation: 2,
                child: Container(
                  constraints: BoxConstraints(
                      minHeight: MediaQuery.of(context).size.height / 1.5),
                  padding: const EdgeInsets.all(8.0),
                  child: ListView(
                    shrinkWrap: true,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(
                            left: 8, right: 8, top: 15.0, bottom: 0),
                        child: TextField(
                          controller: title,
                          style: textStyle.copyWith(fontSize: 21),
                          onChanged: (value) {},
                          decoration: InputDecoration(
                            hintText: 'Title',
                            labelStyle: textStyle.copyWith(fontSize: 21),
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: 8, right: 8, top: 0, bottom: 0.0),
                        child: TextField(
                          controller: body,
                          style: textStyle.copyWith(fontSize: 18),
                          onChanged: (value) {},
                          minLines: 11,
                          maxLines: 11,
                          decoration: InputDecoration(
                            hintText: 'Note',
                            labelStyle: textStyle.copyWith(fontSize: 18),
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: DropdownButton(
                    hint: Text('Category'),
                    underline: SizedBox(),
                    onChanged: (v) {},
                    items: [
                      DropdownMenuItem(
                        value: 'None',
                        child: Text('None'),
                      ),
                      DropdownMenuItem(
                        value: 'Home',
                        child: Text('Home'),
                      ),
                    ],
                    value: 'None',
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 8.0),
                  child: DropdownButton(
                    hint: Text('Category'),
                    underline: SizedBox(),
                    onChanged: (v) {},
                    items: [
                      DropdownMenuItem(
                        value: 'None',
                        child: Text('None'),
                      ),
                      DropdownMenuItem(
                        value: 'Home',
                        child: Text('To-do'),
                      ),
                    ],
                    value: 'None',
                  ),
                )
              ],
            ),
            RaisedButton.icon(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                onPressed: () {},
                padding: EdgeInsets.symmetric(vertical: 12, horizontal: 30),
                color: Colors.green,
                textColor: Colors.white,
                icon: Icon(Icons.save),
                label: Text(
                  'Save Note',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ))
          ],
        ),
      ),
    );
  }
}