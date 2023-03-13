import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:book_collection/models/book_data.dart';
import 'book_tile.dart';

class BookList extends StatelessWidget {
  final String flag;

  BookList({required this.flag});

  @override
  Widget build(BuildContext context) {
    return Consumer<BookData>(
        builder: (BuildContext context, bookData, Widget? child) {
      return ListView.builder(
        itemBuilder: (context, index) {
          final book = (flag == "all_books")
              ? bookData.allBooks[index]
              : (flag == "favorite_books")
                  ? bookData.favoriteBooks[index]
                  : bookData.searchedBooks[index];
          return BookTile(
            coverImage: book.coverImage,
            title: book.title,
            author: book.author,
            rating: book.rating,
            description: book.description,
            publisher: book.publisher,
            pages: book.pages,
            flag: flag,
          );
        },
        itemCount: (flag == "all_books")
            ? bookData.allBooks.length
            : (flag == "favorite_books")
                ? bookData.favoriteBooks.length
                : bookData.searchedBooks.length,
      );
    });
  }
}
