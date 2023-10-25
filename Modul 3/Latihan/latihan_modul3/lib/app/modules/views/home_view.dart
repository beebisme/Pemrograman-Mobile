import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:latihan_modul3/app/modules/views/components/card.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  HomeView({Key? key}) : super(key: key);

  final HomeController homeController = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Fetch Data'),
          centerTitle: true,
        ),
        body: Center(
            child: FutureBuilder(
          future: homeController.data,
          builder: (context, snapshot) {
            var state = snapshot.connectionState;

            if (state != ConnectionState.done) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (snapshot.hasError) {
              {
                return Center(
                  child: Text("error : ${snapshot.error}"),
                );
              }
            } else {
              if (snapshot.hasData) {
                return Cards(
                  userId: snapshot.data!.userId,
                  id: snapshot.data!.id,
                  title: snapshot.data!.title,
                  completed: snapshot.data!.completed,
                );
              }
            }

            return const Text("Bleh Bleh");
          },
        )));
  }
}
