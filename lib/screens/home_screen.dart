import 'package:book_collection/screens/book_search_results_screen.dart';
import 'package:book_collection/screens/favorite_books_screen.dart';
import 'package:book_collection/widgets/book_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:book_collection/models/book.dart';
import 'package:book_collection/models/book_data.dart';

class HomeScreen extends StatefulWidget {
  static const String id = 'home_screen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String keyword = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
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
        child: Container(
          decoration: const BoxDecoration(color: Colors.blueGrey),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Text(
                      'Welcome!',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(width: 235.0,),
                    IconButton(
                      onPressed: () {
                        Navigator.pushNamed(context, FavoriteBooksScreen.id);
                      },
                      icon: const Icon(Icons.star),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 18.0,
                ),
                CupertinoSearchTextField(
                  autocorrect: true,
                  backgroundColor: Colors.white,
                  onChanged: (value) {
                    keyword = value;
                  },
                  onSubmitted: (value) async {
                    Provider.of<BookData>(context, listen: false)
                        .clearSearchResults();
                    List<Book> pbooks = BookData().showAllBooks();
                    List<Book> sbooks =
                        Provider.of<BookData>(context, listen: false)
                            .showSearchedBooks();

                    //print(sbooks.length);
                    for (int i = 0; i < pbooks.length; i++) {
                      if (keyword
                                  .toLowerCase()
                                  .compareTo(pbooks[i].title.toLowerCase()) ==
                              0 ||
                          keyword
                                  .toLowerCase()
                                  .compareTo(pbooks[i].author.toLowerCase()) ==
                              0) {
                        sbooks.add(pbooks[i]);
                        //print(pbooks[i].title);
                        print(sbooks[0].title);
                      }
                    }

                    //Search.bookSearch(keyword);
                    Navigator.pushNamed(context, BookSearchResultsScreen.id);
                  },
                ),
                const SizedBox(
                  height: 18.0,
                ),
                const Text(
                  'All Books',
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
                    flag: 'all_books',
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
