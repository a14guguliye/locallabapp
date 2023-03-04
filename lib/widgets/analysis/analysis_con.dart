import "package:flutter/material.dart";
import "package:flutter_hooks/flutter_hooks.dart";
import "package:flutter_svg/svg.dart";
import "package:helixapp/classes/analysis.dart";

class AnalysisContainer extends HookWidget {
  final Analysis analysis;
  const AnalysisContainer({super.key, required this.analysis});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(8, 16, 8, 16),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(12)),
        border: Border.all(width: 3, color: const Color(0xfff2f3f3)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(3.0),
            child: Row(
              children: [
                Text(
                  analysis.type ?? "",
                  style: const TextStyle(
                      fontSize: 14,
                      height: 21 / 14,
                      fontWeight: FontWeight.w400,
                      color: Color.fromRGBO(97, 99, 101, 1)),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  decoration: const BoxDecoration(
                    color: Color(0xfff2f2f3),
                  ),
                  child: Text(
                    analysis.tag ?? "",
                    style: const TextStyle(
                        fontSize: 12,
                        height: 16 / 12,
                        fontWeight: FontWeight.w400,
                        color: Color.fromRGBO(97, 99, 101, 1)),
                  ),
                )
              ],
            ),
          ),
          Text(
            analysis.description ?? "",
            style: const TextStyle(
              fontSize: 16,
              height: 22 / 16,
              color: Colors.black,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  analysis.price ?? "",
                  style: const TextStyle(
                      fontSize: 16,
                      height: 22 / 16,
                      color: Colors.black,
                      fontWeight: FontWeight.w600),
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: const Color(0xff49B03F),
                        elevation: 1,
                        shape: const RoundedRectangleBorder(
                            side: BorderSide(
                          width: 1,
                          color: Color(0xff49B03F),
                        ))),
                    onPressed: () {},
                    child: const Text("Elave Et")),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 12, bottom: 12),
            child: Divider(
              color: Color(0xff49B03F),
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(
                'assets/svg/time.svg',
                width: 20,
                height: 20,
                colorFilter:
                    const ColorFilter.mode(Color(0xff49B03F), BlendMode.srcIn),
              ),
              const SizedBox(
                width: 10,
              ),
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.only(left: 3, right: 3),
                  child: Text(
                    analysis.resultTime ?? "",
                    maxLines: 2,
                    overflow: TextOverflow.clip,
                    style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        height: 21 / 14,
                        color: Color.fromRGBO(97, 99, 101, 1)),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
