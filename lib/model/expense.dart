// import 'package:flutter/foundation.dart';
import 'package:uuid/uuid.dart';

const uuid = Uuid();
enum Category  {food, work, travel, other,education}

class Expense {
  //constructor
  Expense({
    required this.title,
    required this.amount,
    required this.date,
    required this.category
  }) : id = uuid.v4();
  // properties
  final double amount;
  final String id;
  final String title;
  final DateTime date;
  final Category category;
}
