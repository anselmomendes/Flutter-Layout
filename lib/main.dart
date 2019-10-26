import 'package:flutter/material.dart';

import 'models/item.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  var items = new List<Item>();

  MyHomePage() {
    items = [];
    items.add(Item(title: "Anselmo", done: false));
    items.add(Item(title: "Mendes", done: true));
    items.add(Item(title: "Oliveira", done: false));
  }

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

var newtaskctrl = TextEditingController();

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: TextFormField(
            controller: newtaskctrl,
            keyboardType: TextInputType.text,
            style: TextStyle(
              color: Colors.white,
              fontSize: 19.0,
            ),
            decoration: InputDecoration(
                labelText: "Nova tarefa",
                labelStyle: TextStyle(
                  color: Colors.white,
                )),
          ),
        ),
        body: ListView.builder(
            itemCount: widget.items.length,
            itemBuilder: (BuildContext ctxt, int index) {
              final item = widget.items[index];
              return CheckboxListTile(
                title: Text(item.title),
                key: Key(item.title),
                value: item.done,
                onChanged: (value) {
                  setState(() {
                    item.done = value;
                  });
                },
              );
            }));
  }
}
