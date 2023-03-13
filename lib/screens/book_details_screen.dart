import 'package:flutter/material.dart';

class BookDetails extends StatelessWidget {
  final String title;
  final String description;
  final String publisher;
  final int pages;

  BookDetails(
      {required this.title,
      required this.description,
      required this.publisher,
      required this.pages});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Container(
            child: Column(
              children: [
                const SizedBox(
                  height: 15.0,
                ),
                Text(
                  title,
                  style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0),
                ),
                const SizedBox(
                  height: 15.0,
                ),
                const Divider(
                  thickness: 3.0,
                ),
                const SizedBox(
                  height: 15.0,
                ),
                Text(
                  description,
                  textAlign: TextAlign.justify,
                  style: const TextStyle(color: Colors.black, fontSize: 15.0),
                ),
                const SizedBox(
                  height: 15.0,
                ),
                const Divider(
                  thickness: 3.0,
                ),
                const SizedBox(
                  height: 15.0,
                ),
                Text(
                  "Publisher - $publisher ",
                  style: const TextStyle(color: Colors.black, fontSize: 15.0),
                ),
                Text(
                  "Number of Pages - $pages ",
                  style: const TextStyle(color: Colors.black, fontSize: 15.0),
                ),
                const SizedBox(
                  height: 15.0,
                ),
                const Divider(
                  thickness: 3.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
