import 'package:flutter/material.dart';
import 'package:book_collection/widgets/book_list.dart';

class BookSearchResultsScreen extends StatefulWidget {
  static const String id = 'book_search_results_screen';

  @override
  State<BookSearchResultsScreen> createState() => _BookSearchResultsScreenState();
}

class _BookSearchResultsScreenState extends State<BookSearchResultsScreen> {
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
                  'Search Results',
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
                    flag: "searched_books",
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

