import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title:"CBYK Home",
        theme: ThemeData(
          primaryColor: Colors.orange
        ),
        home: new MyWidget()
    );
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CBYK - TI"),
        centerTitle: true
      ),body: Container(
        color: Colors.white
      ), drawer: Container(
        color: Colors.black,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add_a_photo),
        onPressed: () {print("Pressionado");},
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          children: <Widget>[
            Text("2019 CBYK - All rights Reserved")
          ],
        ),
        color: Colors.lime,       
      ),
      persistentFooterButtons: <Widget>[
        IconButton(icon: Icon(Icons.add_call), onPressed: null)
      ],
    );
  }
}