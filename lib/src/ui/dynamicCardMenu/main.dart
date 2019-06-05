import 'package:flutter/material.dart';

class MenuItem extends StatelessWidget {
  MenuItem(this.title, this.icon);

  final Text title;

  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return Card(elevation: 2.0, child: Container(height:100,width: 100,child:Flex(direction: Axis.vertical,children: <Widget>[title, icon])));
  }
}

class DynamicCardMenu extends StatelessWidget {
  DynamicCardMenu(this.litems);

  final List<MenuItem> litems;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return
      Container(
            height: 100,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: litems.length,
                itemBuilder: (BuildContext ctxt, int Index) {
                  return litems[Index];
                }));
  }
}
