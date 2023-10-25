import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:modul_1/app/modules/views/Components/notification_action.dart';
import 'package:modul_1/app/modules/views/Components/user_profile.dart';
import 'package:modul_1/app/modules/views/Components/banner.dart';
import 'package:modul_1/app/modules/views/Components/label.dart';
import 'package:modul_1/app/modules/views/Components/product_card1.dart';
import 'package:modul_1/app/modules/views/Screen/user_detail.dart';
import '../../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: UserProfile(),
          actions: const <Widget>[NotificationAction()],
          elevation: 0,
          backgroundColor: const Color.fromARGB(255, 238, 238, 238),
          centerTitle: true,
        ),
        bottomNavigationBar: const CustomNavbar(),
        body: const Body());
  }
}

class CustomNavbar extends StatelessWidget {
  const CustomNavbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 238, 238, 238),
      child: Container(
        height: 60,
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.black12, width: 1),
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20))),
        child: Row(
          children: [
            const SizedBox(
              width: 16,
            ),
            InkWell(
                child: SizedBox(
                    height: 24, child: Image.asset("assets/icons/home.png"))),
            const Spacer(),
            InkWell(
              child: SizedBox(
                  height: 24, child: Image.asset("assets/icons/discover.png")),
            ),
            const Spacer(),
            InkWell(
              child: SizedBox(
                  height: 24, child: Image.asset("assets/icons/message.png")),
            ),
            const Spacer(),
            InkWell(
                onTap: () {
                  Get.to(() => const ProfileScreen());
                },
                child: SizedBox(
                    height: 24, child: Image.asset("assets/icons/user.png"))),
            const SizedBox(
              width: 16,
            ),
          ],
        ),
      ),
    );
  }
}

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: const Color.fromARGB(255, 238, 238, 238),
        child: const Padding(
          padding: EdgeInsets.only(top: 16, left: 10),
          child: Column(children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  CardBanner(
                    background: "Card2",
                  ),
                  CardBanner(
                    background: "Card",
                  )
                ],
              ),
            ),
            SizedBox(
              height: 16,
            ),
            ProductLabel(),
            SizedBox(
              height: 16,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(
                    width: 6,
                  ),
                  ProductCard1(
                    brandName: "All New Expander",
                    carType: "SUV",
                    petrol: "90L",
                    transmission: "Manual",
                    seat: "6 People",
                  ),
                  ProductCard1(
                    brandName: "All New Expander",
                    carType: "SUV",
                    petrol: "90L",
                    transmission: "Manual",
                    seat: "6 People",
                  ),
                ],
              ),
            ),
            ProductLabel(),
            SizedBox(
              height: 16,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(
                    width: 6,
                  ),
                  ProductCard1(
                    brandName: "All New Expander",
                    carType: "SUV",
                    petrol: "90L",
                    transmission: "Manual",
                    seat: "6 People",
                  ),
                  ProductCard1(
                    brandName: "All New Expander",
                    carType: "SUV",
                    petrol: "90L",
                    transmission: "Manual",
                    seat: "6 People",
                  ),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
