import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  // String? amountInput;
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  final Function _addNewTransaction;

  NewTransaction(this._addNewTransaction);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(10),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextField(
              decoration: InputDecoration(labelText: 'Title:'),
              controller: titleController,
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Amount:'),
              controller: amountController,
            ),
            TextButton(
              onPressed: () => {
                print('/${titleController.text}/${amountController.text}'),
                _addNewTransaction(
                    titleController.text, double.parse(amountController.text)),
              },
              child: Text('Add Transaction',
                  style: TextStyle(color: Colors.purple)),
            ),
          ],
        ),
      ),
    );
  }
}
