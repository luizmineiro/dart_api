import 'dart:convert';

import 'package:http/http.dart' as http;

Future main() async {
  final todo = await fetch();
  print(todo.title);
}

Future<Todo> fetch() async {
  var url = Uri.parse('https://jsonplaceholder.typicode.com/todos/20');
  var response = await http.get(url);
  // print(response.body);
  var json = jsonDecode(response.body); //transforma a string de json em um map
  var todo = Todo.fromJson(json);
  return todo;
}

class Todo {
  final String title;
  final int id;
  final int userId;
  final bool completed;

  Todo({
    required this.title,
    required this.id,
    required this.userId,
    required this.completed,
  });

  factory Todo.fromJson(Map json) {
    return Todo(
      title: json['title'],
      id: json['id'],
      userId: json['userId'],
      completed: json['completed'],
    );
  }
}
