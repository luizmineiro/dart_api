import 'dart:convert';
import 'package:http/http.dart' as http;

import '../model/todo_model.dart';

Future main() async {
  final todo = await fetch();
  print(todo.toJson());
}

Future<Todo> fetch() async {
  var url = Uri.parse('https://jsonplaceholder.typicode.com/todos/1');
  var response = await http.get(url);
  // print(response.body);
  var json = jsonDecode(response.body); //transforma a string de json em um map
  var todo = Todo.fromJson(json);
  return todo;
}
