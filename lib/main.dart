import 'package:flutter/material.dart';
import 'package:flutter_application_1/item-widget.dart';

import 'items.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'My App',
    home: myApp(),
  ));
}

class myApp extends StatefulWidget {
  const myApp({Key? key}) : super(key: key);

  @override
  _myAppState createState() => _myAppState();
}

class _myAppState extends State<myApp> {
  final dummiList = List.generate(20, (index) => ItemModel.item[0]);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Item MOdel'),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: dummiList.length,
          itemBuilder: (context, index) {
            return ItemWidget(
              item: dummiList[index],
            );
          }),
    );
  }
}
