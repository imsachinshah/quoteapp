import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'quote.dart';
import 'QuoteCard.dart';

void main(){
  runApp(MaterialApp(
    home: QuoteList(),
  ));
}

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote(text: 'We write to taste life twice, in the moment and in retrospect.', author: 'Anais Nin'),
    Quote(text: 'Either write something worth reading or do something worth writing.', author: 'Benjamin Franklin'),
    Quote(text: 'You may stay drunk on writing so reality cannot destroy you.', author: 'Ray Bradbury'),
    Quote(text: 'Let me live, love, and say it well in good sentences.', author: 'Sylvia Plath'),
    Quote(text: 'I kept always two books in my pocket, one to read, one to write in.', author: 'Robert Louis Stevenson')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          backgroundColor: Colors.red[400],
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {}
            ),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {},
          )
        ],
        title: Text('Quote Card'),
        backgroundColor: Colors.red[500],
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            children:
              quotes.map((quote) => Quote_Card(
                quote: quote,
                delete: () {
                  setState(() {
                    quotes.remove(quote);
                  });
                }
              )).toList(),
          ),
        ),
      ),
    );
  }
}



























