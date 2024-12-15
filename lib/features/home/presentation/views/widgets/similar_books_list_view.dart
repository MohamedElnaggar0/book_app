import 'package:bookly/features/home/presentation/views/widgets/custom_book_item.dart';
import 'package:flutter/material.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .15,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.0),
            child: CustomBookItem(
              imageUrl:
                  'https://images.pexels.com/photos/1005324/literature-book-open-pages-1005324.jpeg?cs=srgb&dl=antique-book-book-bindings-1005324.jpg&fm=jpg',
            ),
          );
        },
      ),
    );
  }
}
