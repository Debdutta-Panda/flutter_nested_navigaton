import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Home Page"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Home Page"),
              ElevatedButton(
                  onPressed: (){
                    Navigator.of(context).pushNamed("/main");
                  },
                  child: Text("Go to main page")
              )
            ],
          ),
        )// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}