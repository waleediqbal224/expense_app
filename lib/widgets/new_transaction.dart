import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  NewTransaction(this.addTx, {Key? key}) : super(key: key);

  final Function addTx;
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            TextField(
              decoration: const InputDecoration(labelText: 'Title'),
              controller: titleController,
            ),
            TextField(
              decoration: const InputDecoration(labelText: 'Amount'),
              controller: amountController,
            ),
            TextButton(
                style: TextButton.styleFrom(backgroundColor: Colors.amber),
                onPressed: () {
                  addTx(titleController.text,
                      double.parse(amountController.text));
                },
                child: const Text(
                  "Add Transaction",
                  style: TextStyle(color: Colors.black),
                )),
          ],
        ),
      ),
    );
  }
}
