import 'package:flutter/material.dart';

class ProductLabel extends StatelessWidget {
  const ProductLabel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 11.0, right: 16),
      child: Row(
        children: [
          Text(
            "Popular Car",
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: const Color(0x007c5cfd).withOpacity(1)),
          ),
          const Spacer(),
          const Text(
            "View All",
            style: TextStyle(
                fontSize: 14,
                color: Colors.black26,
                fontWeight: FontWeight.w500),
          )
        ],
      ),
    );
  }
}
