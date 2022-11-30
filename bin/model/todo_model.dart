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
  
  //mapear json
  factory Todo.fromJson(Map<String, dynamic> json) {
    return Todo(
      title: json['title'],
      id: json['id'],
      userId: json['userId'],
      completed: json['completed'],
    );
  }

  //retorna json
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'userId': userId,
      'completed': completed,
    };
  }
}