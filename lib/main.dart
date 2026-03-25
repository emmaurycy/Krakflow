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
              const TaskCard(
                title: "Projekt Flutter",
                subtitle: "termin: jutro",
                icon: Icons.task,
              ),
              const TaskCard(
                title: "Ćwiczenia z matematyki",
                subtitle: "termin: dzisiaj",
                icon: Icons.task,
              ),
              const TaskCard(
                title: "Przeczytać o widgetach",
                subtitle: "termin: w tym tygodniu",
                icon: Icons.task,
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}

class TaskCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon; // parametr dla ikony

  const TaskCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(icon),
        title: Text(title),
        subtitle: Text(subtitle),
      ),
    );
  }
}
