import "package:flutter/material.dart";
import "package:flutter_svg/svg.dart";

class NavbarItem extends StatelessWidget {
  final String assetName;
  final String labelText;
  const NavbarItem(
      {super.key, required this.assetName, required this.labelText});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: const EdgeInsets.only(bottom: 4),
          child: SvgPicture.asset(
            "assets/svg/$assetName",
            width: 24,
            height: 24,
            fit: BoxFit.scaleDown,
            colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),
          ),
        ),
        Text(
          labelText,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 10,
            height: 12 / 10,
          ),
        ),
      ],
    );
  }
}
