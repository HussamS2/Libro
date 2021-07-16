import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DataSearch extends SearchDelegate<String> {
  bool isSearching = false;
  final books = [
    "Gray's Anatomy",
    "The Future of Architecture in a 100 Buildings",
    "The origin of Species",
    "The Design of Everyday Things",
    "Material Science",
    "Thinking Fast & Slow",
    "Understanding Architecture",
    "World Architecture",
    "The Poetics Of Space",
    "The Great Bridge",
    "Why Buildings Fall Down",
    "The Design Of Everything",
    "Animal Spirits",
    "Undercover Economist",
    "Freakonomics",
    "Guyton's Physiology",
    "Harrison's Principles",
    "Macloed's Examination"
  ];
  final recentBooks = [
    "Gray's Anatomy",
    "The Future of Architecture in a 100 Buildings",
    "Material Science",
    "Thinking Fast & Slow",
    "The origin of Species",
  ];

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
          icon: Icon(Icons.clear),
          onPressed: () {
            query = "";
          })
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
        icon: AnimatedIcon(
          icon: AnimatedIcons.menu_arrow,
          progress: transitionAnimation,
        ),
        onPressed: () {
          close(context, null);
        });
  }

  @override
  Widget buildResults(BuildContext context) {}

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestionList = query.isEmpty
        ? recentBooks
        : books.where((p) => p.startsWith(query)).toList();

    return ListView.builder(
      itemBuilder: (context, index) => ListTile(
        onTap: () {
          showResults(context);
        },
        leading: Icon(FontAwesomeIcons.bookOpen),
        title: Text(suggestionList[index]),
      ),
      itemCount: suggestionList.length,
    );
  }
}
