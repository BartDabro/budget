import 'package:flutter/material.dart';
import './new_transaction.dart';
import './transaction_list.dart';
import '../models/transaction.dart';
import 'package:flutter/foundation.dart';

class UsersTransactions extends StatefulWidget {
  @override
  _UsersTransactionsState createState() => _UsersTransactionsState();
}

class _UsersTransactionsState extends State<UsersTransactions> {
  final List<Transaction> _userTransactions = [
    Transaction(
      id: 't1',
      title: 'New Shoes',
      amount: 59.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Weekly Groceries',
      amount: 16.53,
      date: DateTime.now(),
    ),
  ];



  void _addNewTransaction(String txTitle, double txAmount) {
    
    final newTx = Transaction(
        id: DateTime.now().toString(),
        title: txTitle, 
        amount: txAmount, 
        date: DateTime.now(), 
         
        );

        setState(() {
         _userTransactions.add(newTx); 
        });
  }


  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      NewTransaction(_addNewTransaction),
      TransactionList(_userTransactions), 
    ],);
      
  }
}