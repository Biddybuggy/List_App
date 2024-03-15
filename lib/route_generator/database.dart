
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

@HiveType(typeId: 1)
class Person {
  Person({required this.email, required this.username, required this.password});

  @HiveField(0)
  String email;

  @HiveField(1)
  String username;

  @HiveField(2)
  String password;
}