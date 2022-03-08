import 'package:flutter/material.dart';

class Todo {
  String title;
  bool status;

  Todo({ required this.title, this.status = false });

  factory Todo.fromJson(Map<String, dynamic> json){
    final title = json["title"] ?? "";
    final status = json["status"] ?? false;

    if(title is String && status is bool){
      return Todo(title: title, status: status);
    }
    throw Exception("Invalid json format!");
  }

  Map<String, dynamic> toJson(Todo todo){
    return {
      "title": todo.title,
      "status": todo.status
    };
  }
}