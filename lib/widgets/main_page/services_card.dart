import "package:flutter/material.dart";
import "package:flutter/rendering.dart";
import "package:flutter_hooks/flutter_hooks.dart";

class ServiceCard extends HookWidget {
  final String labelText;
  final String imagePath;
  const ServiceCard(
      {super.key, required this.labelText, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Container(
        width: constraints.maxWidth / 2,
        height: constraints.maxWidth / 2,
        padding: const EdgeInsets.all(6),
        decoration: BoxDecoration(
          border: Border.all(width: 3, color: const Color(0xfff2f3f3)),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 42,
              child: Center(
                child: Text(
                  labelText,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 14,
                    color: Color(0xff313335),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            Expanded(
                child: Image.asset(
              "assets/img/$imagePath",
              fit: BoxFit.cover,
            ))
          ],
        ),
      );
    });
  }
}
