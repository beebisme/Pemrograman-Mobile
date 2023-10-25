import 'package:flutter/material.dart';

class CardBanner extends StatelessWidget {
  const CardBanner({Key? key, required this.background}) : super(key: key);

  final String background;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 340,
      height: 180,
      margin: const EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
          color: Colors.black12,
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
              image: AssetImage("assets/photos/$background.png"),
              fit: BoxFit.cover)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              width: 240,
              child: Text(
                "The Best Platform for Car Rental",
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
              ),
            ),
            const Spacer(),
            const SizedBox(
              width: 200,
              child: Text(
                "Ease of doing a car rental safely and reliably. of course at a low price",
                style: TextStyle(
                    fontSize: 12,
                    color: Colors.white60,
                    fontWeight: FontWeight.w500),
              ),
            ),
            const Spacer(),
            ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0x001c0f78).withOpacity(1)),
                child: const Text("Rental Now"))
          ],
        ),
      ),
    );
  }
}
