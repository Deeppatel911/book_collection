import 'package:book_collection/models/book.dart';
import 'package:book_collection/models/book_data.dart';
import 'package:book_collection/screens/book_details_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BookTile extends StatelessWidget {
  final String coverImage;
  final String title;
  final String author;
  final double rating;
  final String description;
  final String publisher;
  final int pages;
  final String flag;

  BookTile({
    required this.coverImage,
    required this.title,
    required this.author,
    required this.rating,
    required this.description,
    required this.publisher,
    required this.pages,
    required this.flag,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        showBottomSheet(
          context: context,
          builder: (context) => BookDetails(
            title: title,
            description: description,
            publisher: publisher,
            pages: pages,
          ),
        );
      },
      onLongPress: () {
        final book = Book(
            title: title,
            author: author,
            coverImage: coverImage,
            rating: rating,
            description: description,
            publisher: publisher,
            pages: pages);
        if (flag == "all_books") {
          Provider.of<BookData>(context, listen: false).markBookFavorite(book);
          print('book marked as favorite');
        }
      },
      leading: CircleAvatar(
        backgroundImage: AssetImage('images/$coverImage'),
      ),
      title: Text(
        title,
        textAlign: TextAlign.justify,
        style:
            const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
      ),
      subtitle: Text(
        author,
        textAlign: TextAlign.justify,
        style: const TextStyle(color: Colors.black),
      ),
      trailing: Text('$rating ⭐'),
    );
  }
}
