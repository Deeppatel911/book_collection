import 'package:book_collection/screens/book_search_results_screen.dart';
import 'package:book_collection/screens/favorite_books_screen.dart';
import 'package:book_collection/screens/home_screen.dart';
import 'package:book_collection/screens/login_screen.dart';
import 'package:book_collection/screens/registration_screen.dart';
import 'package:book_collection/screens/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'models/book_data.dart';

void main() {
  runApp(BookCollection());
}

class BookCollection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => BookData(),
      child: MaterialApp(
        initialRoute: WelcomeScreen.id,
        routes: {
          WelcomeScreen.id: (context) => WelcomeScreen(),
          RegistrationScreen.id: (context) => RegistrationScreen(),
          LoginScreen.id: (context) => LoginScreen(),
          HomeScreen.id: (context) => HomeScreen(),
          FavoriteBooksScreen.id: (context) => FavoriteBooksScreen(),
          BookSearchResultsScreen.id: (context) => BookSearchResultsScreen(),
        },
      ),
    );
  }
}
