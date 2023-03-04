import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';
import 'package:helixapp/classes/analysis.dart';

import '../universal/bottom_navbar.dart';
import '../widgets/analysis/analysis_con.dart';

class AnalysisPage extends HookWidget {
  static String routeName = '/analysispage';
  const AnalysisPage({super.key});

  @override
  Widget build(BuildContext context) {
    final Iterable<Analysis> analysises = [
      Analysis(
          tag: "3055A",
          type: "Kompleks",
          description: "4 vitamin analizi",
          price: "100 AZN",
          resultTime:
              "Analiz verildiyi gunden 4 saat etibaren, eger 14:00 da analiz verilibse onda novbeti gun 14:00 dan sonra"),
      Analysis(
          tag: "3055A",
          type: "Kompleks",
          description: "4 vitamin analizi",
          price: "100 AZN",
          resultTime:
              "Analiz verildiyi gunden 4 saat etibaren, eger 14:00 da analiz verilibse onda novbeti gun 14:00 dan sonra"),
      Analysis(
          tag: "3055A",
          type: "Kompleks",
          description: "4 vitamin analizi",
          price: "100 AZN",
          resultTime:
              "Analiz verildiyi gunden 4 saat etibaren, eger 14:00 da analiz verilibse onda novbeti gun 14:00 dan sonra"),
      Analysis(
          tag: "3055A",
          type: "Kompleks",
          description: "4 vitamin analizi",
          price: "100 AZN",
          resultTime:
              "Analiz verildiyi gunden 4 saat etibaren, eger 14:00 da analiz verilibse onda novbeti gun 14:00 dan sonra"),
      Analysis(
          tag: "3055A",
          type: "Kompleks",
          description: "4 vitamin analizi",
          price: "100 AZN",
          resultTime:
              "Analiz verildiyi gunden 4 saat etibaren, eger 14:00 da analiz verilibse onda novbeti gun 14:00 dan sonra"),
      Analysis(
          tag: "3055A",
          type: "Kompleks",
          description: "4 vitamin analizi",
          price: "100 AZN",
          resultTime:
              "Analiz verildiyi gunden 4 saat etibaren, eger 14:00 da analiz verilibse onda novbeti gun 14:00 dan sonra"),
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text("Analiz ve Qiymetler"),
        centerTitle: true,
        backgroundColor: const Color(0xff49B03F),
      ),
      body: LayoutBuilder(builder: (context, constraints) {
        return SizedBox(
            width: constraints.maxWidth,
            height: constraints.maxHeight,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                    padding: EdgeInsets.only(
                        top: 20, bottom: 20, left: 12, right: 12),
                    child: Text(
                      "Analiz ve Qiymetler: Top 50",
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                    )),
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.only(left: 12, right: 12),
                  child: ListView.builder(
                    itemCount: analysises.length,
                    itemBuilder: (context, index) {
                      return AnalysisContainer(
                        analysis: analysises.elementAt(index),
                      );
                    },
                  ),
                )),
                const BottomNavbar(),
              ],
            ));
      }),
    );
  }
}
