import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() => runApp(MaterialApp(
  home: QuoteList()
));

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

  List<Quote> quotes = [
    Quote(author: 'Oscar Wilde', text: 'Be yourself; everyone else is already taken'),
    Quote(author: 'James Brian', text: 'I have nothing to declare except my genius'),
    Quote(author: 'Michael Brian', text: 'The truth is rarely pure and never simple'),
    Quote(text: 'A good programmer is a lazy one, Do not put all your eggs in one basket', author: 'Uhuru'),
    Quote(author: 'Mike', text: 'Do not put all your eggs in one basket'),
    Quote(author: 'Jacob', text: 'Programming is an art and a science'),
    Quote(text: 'One by one makes a bundle', author: 'Mark'),
    Quote(author: 'James', text: 'Slow but sure'),
    Quote(author: 'Jimmy', text: 'As black as charcoal'),
    Quote(text: 'A good programmer is a lazy one', author: 'Uhuru'),
    Quote(author: 'Mike', text: 'Do not put all your eggs in one basket'),
    Quote(author: 'Jacob', text: 'Programming is an art and a science'),
    Quote(text: 'One by one makes a bundle', author: 'Mark'),
    Quote(author: 'James', text: 'Slow but sure'),
    Quote(author: 'Jimmy', text: 'As black as charcoal'),
    Quote(text: 'A good programmer is a lazy one', author: 'Uhuru'),
    Quote(author: 'Mike', text: 'Do not put all your eggs in one basket'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Awesome Quotes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: quotes.map((quote) => QuoteCard(
            quote: quote,
            delete: () {
              setState(() {
                quotes.remove(quote);
              });
            }
          )).toList(),
        ),
      ),
    );
  }
}