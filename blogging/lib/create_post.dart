import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AddBlog(),
    ));

class AddBlog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = Padding(
      padding: EdgeInsets.only(bottom: 20),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Title',
          contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black, width: 1.5),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.blue, width: 1.5),
          ),
        ),
      ),
    );

    final content = Padding(
      padding: EdgeInsets.only(bottom: 10),
      child: TextField(
        maxLines: 25,
        decoration: InputDecoration(
          hintText: 'Content',
          contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black, width: 1.5),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.blue, width: 1.5),
          ),
        ),
      ),
    );

    final buttonSignup = Padding(
      padding: EdgeInsets.only(top: 10),
      child: ButtonTheme(
        child: Container(
          height: 60.0,
          child: RaisedButton(
            child: Text('Publish',
                style: TextStyle(color: Colors.white, fontSize: 20)),
            color: Colors.blueGrey[900],
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
            onPressed: () => {},
          ),
        ),
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('Create a Post'),
        backgroundColor: Colors.blueGrey[900],
      ),
      body: Container(
        child: Center(
          child: ListView(
            shrinkWrap: true,
            padding: EdgeInsets.symmetric(horizontal: 20),
            children: <Widget>[
              title,
              content,
              buttonSignup,
            ],
          ),
        ),
      ),
    );
  }
}
