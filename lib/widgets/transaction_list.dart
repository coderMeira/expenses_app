import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../models/transaction.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> txList;

  TransactionList(this.txList);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: txList.map((tx) {
        return Card(
          child: Row(children: [
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              decoration: BoxDecoration(
                  border: Border.all(
                color: Colors.purple,
                width: 2,
              )),
              padding: const EdgeInsets.all(10),
              child: Text(
                "${tx.amount}€",
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.purple),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  tx.title,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 18),
                ),
                Text(
                  DateFormat("yyyy-MM-dd").format(tx.date),
                  style: const TextStyle(fontSize: 15, color: Colors.grey),
                )
              ],
            )
          ]),
        );
      }).toList(),
    );
  }
}
