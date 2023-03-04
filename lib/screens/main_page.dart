import "package:flutter/material.dart";
import 'package:flutter/rendering.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:helixapp/universal/bottom_navbar.dart';
import 'package:helixapp/universal/navbar_item.dart';
import 'package:helixapp/widgets/main_page/services_card.dart';

class MainPage extends HookWidget {
  static const String routeName = '/mainpage';
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Esas Sehife"),
          centerTitle: true,
          backgroundColor: const Color(0xff49B03F),
        ),
        body: LayoutBuilder(builder: (context, constraints) {
          return Column(
            children: [
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.only(
                  right: 12,
                  left: 12,
                  top: 12,
                ),
                child: LayoutBuilder(builder: (context, constraints) {
                  return SizedBox(
                    width: constraints.maxWidth,
                    height: constraints.maxHeight,
                    child: Center(
                      child: Wrap(
                        children: [
                          InkWell(
                            onTap: () {},
                            child: const ServiceCard(
                                labelText: "Analiz Neticeleri",
                                imagePath: "results.png"),
                          ),
                          InkWell(
                            onTap: () {},
                            child: const ServiceCard(
                                labelText: "Analiz Goturmek",
                                imagePath: "take_samples.png"),
                          ),
                          InkWell(
                            onTap: () {},
                            child: const ServiceCard(
                                labelText: "Yerinde Gorus",
                                imagePath: "appointment.png"),
                          ),
                          InkWell(
                            onTap: () {},
                            child: const ServiceCard(
                                labelText: "COVID Testleri",
                                imagePath: "covid.png"),
                          ),
                          InkWell(
                            onTap: () {},
                            child: const ServiceCard(
                                labelText: "Endirim Ve Aksiyalar",
                                imagePath: "discount.png"),
                          ),
                          InkWell(
                            onTap: () {},
                            child: const ServiceCard(
                                labelText: "Merkezlerin Is Qrafiki",
                                imagePath: "location.png"),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
              )),
              const BottomNavbar(),
            ],
          );
        }),
      ),
    );
  }
}
