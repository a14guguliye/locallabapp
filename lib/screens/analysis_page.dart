import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class AnalysisPage extends HookWidget {
  static String routeName = '/analysispage';
  const AnalysisPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Analiz ve Qiymetler"),
        centerTitle: true,
        backgroundColor: const Color(0xff49B03F),
      ),
    );
  }
}
