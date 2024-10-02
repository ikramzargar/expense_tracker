import 'package:expense_tracker/widgets/expenes_list.dart';
import 'package:flutter/material.dart';

import '../models/expense.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() => _ExpensesState();
}

class _ExpensesState extends State<Expenses> {

 final List<Expense> _registeredExpenses = [
   Expense(title: 'First', amount: 12.20, date: DateTime.now(), category: Category.food),
   Expense(title: 'second', amount: 16.20, date: DateTime.now(), category: Category.leisure),
 ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        children: [
          const Text('chart'),
          Expanded(child: ExpensesList(expenses: _registeredExpenses)),
        ],
      ) ,
    );
  }
}
