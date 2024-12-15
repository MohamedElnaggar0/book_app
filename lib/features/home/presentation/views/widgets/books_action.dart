import 'package:flutter/material.dart';

import '../../../../../core/widgets/custom_button.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: [
          Expanded(
            child: CustomButton(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                bottomLeft: Radius.circular(16),
              ),
              text: '19.99 €',
              backgroundColor: Colors.white,
              textColor: Colors.black,
            ),
          ),
          Expanded(
            child: CustomButton(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(16),
                bottomRight: Radius.circular(16),
              ),
              text: 'Free Preview',
              backgroundColor: Color(0xffEF8262),
              textColor: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
