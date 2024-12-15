import 'package:flutter/material.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemCount: 15,
      itemBuilder: (context, index) {
        return const Padding(
            padding: EdgeInsets.only(bottom: 10.0), child: Text('data')
            // BookListViewItem(books: ,),
            );
      },
    );
  }
}
