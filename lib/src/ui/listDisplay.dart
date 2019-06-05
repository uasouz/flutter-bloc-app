import 'package:flutter/material.dart';

class ListDisplay extends StatefulWidget {
  @override
  State createState() => new DyanmicList();
}

class DyanmicList extends State<ListDisplay> {
  List<String> litems = [];
  final TextEditingController eCtrl = new TextEditingController();

  @override
  Widget build(BuildContext ctxt) {
    return Column(children: <Widget>[
      TextField(
        controller: eCtrl,
        onSubmitted: (text) {
          litems.add(text);
          eCtrl.clear();
          setState(() {});
        },
      ),
      new Expanded(
          child: new ListView.builder
            (
              itemCount: litems.length,
              itemBuilder: (BuildContext ctxt, int Index) {
                return new Text(litems[Index]);
              }
          )
      )
    ]);
  }
}