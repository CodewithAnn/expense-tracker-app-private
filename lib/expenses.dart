import 'package:expense_tracker_app/expenses_list.dart';
import 'package:expense_tracker_app/model/expense.dart';
import 'package:flutter/material.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() => _ExpenseState();
}

class _ExpenseState extends State<Expenses> {
  final List<Expense> _registerdExpenses = [
    Expense(
        title: 'Eat Chicken Shwarma',
        amount: 6.78,
        date: DateTime.now(),
        category: Category.food),
    Expense(
        title: 'Visit paris',
        amount: 300,
        date: DateTime.now(),
        category: Category.travel),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Text('top band'),
          Expanded(child: ExpenseList(expenses: _registerdExpenses)),
        ],
      ),
    );
  }
}
