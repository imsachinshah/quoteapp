import 'package:flutter/material.dart';
import 'quote.dart';

class Quote_Card extends StatelessWidget {

  final Quote quote;
  final Function delete;
  Quote_Card({ this.quote, this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.redAccent[50],
      margin: EdgeInsets.fromLTRB(14.0, 16.0, 14.0, 0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Icon(Icons.format_quote),
            Text(
              quote.text,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 18.0,
                color: Colors.grey[700],
              ),
            ),
            SizedBox(height: 7.0,),
            Text(
              quote.author,
              style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[750]
              ),
            ),
            SizedBox(height: 6.0),
            FlatButton.icon(
                onPressed: delete,
                icon: Icon(
                    Icons.delete,
                  color: Colors.green[500],
                ),
                label: Text(
                  'Delete Quote',
                  style: TextStyle(
                    color: Colors.green[500]
                  ),
                )
            ),
          ],
        ),
      ),
    );
  }
}
