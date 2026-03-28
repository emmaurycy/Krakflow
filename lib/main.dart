import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

List<Task> tasks = [
  Task("Projekt Flutter", "jutro", false, "wysoki"),
  Task("Ćwiczenia z matematyki", "dzisiaj", true, "wysoki"),
  Task("Przeczytać o widgetach", "w tym tygodniu", false, "niski"),
];

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'krakflow',
      home: Column(
        children: [
          Text("moja lista ${tasks.length} zadan"),
          Expanded(
            child: ListView.builder(
              itemCount: tasks.length,
              itemBuilder: (context, index) {
                var task = tasks[index];
                return TaskCard(
                  task.title,
                  task.deadline,
                  task.done ? Icons.check_circle : Icons.radio_button_unchecked,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class Task {
  String title;
  String deadline;
  bool done;
  String priority;

  Task(this.title, this.deadline, this.done, this.priority);
}

class TaskCard extends StatelessWidget {
  String title;
  String subtitle;
  IconData icon;

  TaskCard(
    this.title,
    this.subtitle,
    this.icon,
  );

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
