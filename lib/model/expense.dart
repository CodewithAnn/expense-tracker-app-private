import 'package:uuid/uuid.dart';

const uuid = Uuid();

class Expense {
  //constructor
  Expense({
    required this.amount,
    required this.date,
    required this.title,
  }) : id = uuid.v4();
  // properties
  final double amount;
  final String id;
  final String title;
  final DateTime date;
}
