import 'package:book_collection/widgets/book_list.dart';
import 'package:flutter/material.dart';

class FavoriteBooksScreen extends StatefulWidget {
  static const String id = 'favorite_books_screen';

  @override
  State<FavoriteBooksScreen> createState() => _FavoriteBooksScreenState();
}

class _FavoriteBooksScreenState extends State<FavoriteBooksScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Book Collection',
          style: TextStyle(
            color: Colors.black,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.close),
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Container(
            child: Column(
              children: [
                const SizedBox(
                  height: 18.0,
                ),
                const Text(
                  'Favorite Books',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0),
                ),
                const SizedBox(
                  height: 18.0,
                ),
                Expanded(
                  child: BookList(
                    flag: "favorite_books",
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
