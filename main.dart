import 'dart:developer';

import "package:flutter/material.dart";

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Exploring UI Widget",
      home: Scaffold(
          appBar: AppBar(
            title: Text(
              "Showing List Item",
              style: TextStyle(
                decoration: TextDecoration.none,
                color: Colors.green,
              ),
            ),
          ),
          body: getListItem()),
    ),
  );
}

Widget getListView() {
  var listView = ListView(children: <Widget>[
    ListTile(
        leading: Icon(Icons.ac_unit),
        subtitle: Icon(Icons.yard),
        title: Icon(Icons.hail),
        trailing: Icon(Icons.kayaking),
        onTap: () {
          debugPrint("Showing List Style");
        })
  ]);
  return listView;
}

List<String> generatingListElements() {
  var listView = List<String>.generate(50, (counter) => "Item ${counter}");
  return listView;
}

Widget getListItem() {
  var listItem = generatingListElements();
  var listView = ListView.builder(itemBuilder: (context, index) {
    return ListTile(
        title: Text(listItem[index]),
        onTap: () {
          debugPrint("${listItem[index]} was tapped");
        });
  });
  return listView;
}
