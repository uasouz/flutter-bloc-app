import 'package:flutter/material.dart';
import 'package:oxygen/src/ui/cards.dart';
import 'package:oxygen/src/ui/dynamicCardMenu/main.dart';
import 'package:qr_flutter/qr_flutter.dart';

class App extends StatelessWidget {
  List<MenuItem> menuItems = <MenuItem>[
    MenuItem(Text("Cards"), Icon(Icons.credit_card)),
    MenuItem(Text("Home"), Icon(Icons.home)),
    MenuItem(Text("Dashboard"), Icon(Icons.dashboard)),
    MenuItem(Text("Themes"), Icon(Icons.palette)),
    MenuItem(Text("Security"), Icon(Icons.verified_user)),
    MenuItem(Text("Account"), Icon(Icons.account_circle)),
    MenuItem(Text("Money"), Icon(Icons.monetization_on)),
    MenuItem(Text("Settings"), Icon(Icons.settings)),
    MenuItem(Text("Text"), Icon(Icons.keyboard)),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Column(children: [
      Expanded(
          child: Container(
        child: Flex(
          direction: Axis.vertical,
          children: <Widget>[
            Card(
                key: Key("userCard"),
                child: InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Cards()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.account_circle,
                            size: 90,
                          ),
                          Text("Hadara")
                        ],
                      ),
                    ))),
            Card(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: QrImage(
                    data: "1234567890",
                    size: 200.0,
                  ),
                )),
          ],
        ),
      )),
      DynamicCardMenu(menuItems)
    ])));
  }
}
