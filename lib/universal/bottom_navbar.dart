import 'package:flutter/material.dart';

import 'navbar_item.dart';

class BottomNavbar extends StatelessWidget {
  const BottomNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Container(
        height: 69,
        width: constraints.maxWidth,
        decoration: const BoxDecoration(
          color: Color(0xff49B03F),
        ),
        child: Row(
          children: [
            Flexible(
              flex: 1,
              fit: FlexFit.tight,
              child: InkWell(
                onTap: () {},
                child: const NavbarItem(
                    assetName: "analysis_tube.svg", labelText: "Analiz vermek"),
              ),
            ),
            Flexible(
              flex: 1,
              fit: FlexFit.tight,
              child: InkWell(
                onTap: () {},
                child: const NavbarItem(
                    assetName: "covid.svg", labelText: "COVID Test"),
              ),
            ),
            Flexible(
              flex: 1,
              fit: FlexFit.tight,
              child: InkWell(
                onTap: () {},
                child: const NavbarItem(
                    assetName: "truck.svg", labelText: "Yerinde analiz"),
              ),
            ),
          ],
        ),
      );
    });
  }
}
