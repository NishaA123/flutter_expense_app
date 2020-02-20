import 'package:flutter/material.dart';

import './transaction.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Expense App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<Transaction> transation = [
    Transaction(
      id: 't1',
      title: 'New Dress',
      amount: 1500,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Electricity Bill',
      amount: 560,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't3',
      title: 'Sofa Furniture',
      amount: 45000,
      date: DateTime.now(),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Expense App'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              width: double.infinity,
              child: Card(
                color: Colors.amberAccent,
                child: Text('CHART'),
                elevation: 5,
              ),
            ),
            Column(
              children: transation.map((tx) {
                return Row(
                  children: <Widget>[
                    Container(
                      child: Text(tx.amount.toString()),
                    ),
                    Column(
                      children: <Widget>[
                        Text(tx.title),
                        Text(tx.date.toString()),
                      ],
                    )
                  ],
                );
              }).toList(),
            )
          ],
        ));
  }
}
