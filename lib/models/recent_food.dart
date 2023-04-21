import 'package:flutter/material.dart';

class Recent {
  int? id;
  final String title;
  final String path;
  DateTime creationDate;
  // bool isChecked;

  Recent({
    this.id,
    required this.title,
    required this.path,
    required this.creationDate,
    // required this.isChecked,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'path': path,
      'creationDate': creationDate.toString(),
      // 'isChecked': isChecked ? 1 : 0
    };
  }

  @override
  String toString() {
    return 'Recent(id: $id, title: $title, path: $path, creationDate: $creationDate)';
  }
}
