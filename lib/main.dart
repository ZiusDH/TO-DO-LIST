import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Lista de Tarefas',
      home: MyHome(),
    );
  }
}

class MyHome extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyHomeState();
  }
}

class MyHomeState extends State<MyHome> {
  final TextEditingController taskController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 190, 243, 231),
      appBar: AppBar(
        title: Text('Lista de Tarefas'),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Column(
          children: <Widget>[
            Form(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: TextFormField(
                      controller: taskController,
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 32,
                      ),
                      decoration: InputDecoration(
                        hintText: "Digite uma nova tarefa...",
                        hintStyle: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      keyboardType: TextInputType.text,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text("Adicionar"),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
