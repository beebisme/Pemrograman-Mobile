import 'package:flutter/material.dart';

class ProductCard1 extends StatelessWidget {
  const ProductCard1(
      {Key? key,
      required this.brandName,
      required this.carType,
      required this.petrol,
      required this.transmission,
      required this.seat})
      : super(key: key);

  final String brandName, carType, petrol, transmission, seat;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 270,
      height: 310,
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
      margin: const EdgeInsets.only(right: 16, bottom: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: const Color(0xFF000000).withOpacity(0.06),
            offset: const Offset(0, 10),
            blurRadius: 30,
            spreadRadius: -10,
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    brandName,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    carType,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black45),
                  )
                ],
              ),
              const Spacer(),
              SizedBox(
                height: 32,
                width: 32,
                child: Image.asset("assets/icons/favorite.png"),
              )
            ],
          ),
          Container(
            height: 160,
            width: 200,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/photos/xpander.png"),
                fit: BoxFit.contain, // Atur sesuai kebutuhan Anda
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Row(
            children: [
              // <<<------->>>
              SizedBox(
                height: 16,
                width: 16,
                child: Image.asset("assets/icons/petrol.png"),
              ),
              const SizedBox(
                width: 4,
              ),
              Text(
                petrol,
                style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.black45),
              ),

              // <<<------->>>
              const Spacer(),
              SizedBox(
                height: 16,
                width: 16,
                child: Image.asset("assets/icons/transmission.png"),
              ),
              const SizedBox(
                width: 4,
              ),
              Text(
                transmission,
                style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.black45),
              ),

              // <<<------->>>
              const Spacer(),
              SizedBox(
                height: 16,
                width: 16,
                child: Image.asset("assets/icons/seat.png"),
              ),
              const SizedBox(
                width: 4,
              ),
              Text(
                seat,
                style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.black45),
              )
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          Row(
            children: [
              const Text(
                "\$80.00/",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const Text(
                "day",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black45),
              ),
              const Spacer(),
              ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0x001c0f78).withOpacity(1)),
                  child: const Text("Rental Now"))
            ],
          )
        ],
      ),
    );
  }
}
