import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Column(children: [Text("KrakFlow"), SizedBox(height: 20)]),
          ),
        ),
        body: Center(
          child: Column(
            children: [
              Text("Organizacja studiów"),
              SizedBox(height: 20),
              Text("Dzisiejsze zadania"),
              Card(
                child: ListTile(
                  leading: Icon(Icons.task),
                  title: Text("Projekt Flutter"),
                  subtitle: Text("termin: jutro"),

                ),
              ),
              Card(
                child: ListTile(
                  leading: Icon(Icons.task),
                  title: Text("Ćwiczenia z matematyki"),
                  subtitle: Text("termin: dzisiaj"),

                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
