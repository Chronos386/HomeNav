import '../../res/global.dart';
import 'package:flutter/material.dart';
import '../../res/generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';

class ChangeFloorWidget extends StatelessWidget {
  const ChangeFloorWidget(
      {Key? key,
      required this.currentIntValue,
      required this.onMinusPress,
      required this.onPlusPress})
      : super(key: key);
  final int currentIntValue;
  final VoidCallback onMinusPress;
  final VoidCallback onPlusPress;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomLeft,
      child: Padding(
        padding: const EdgeInsets.only(left: 10, bottom: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              decoration: const BoxDecoration(
                color: Global.gradTwo,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                ),
              ),
              child: IconButton(
                padding: const EdgeInsets.all(9),
                constraints: const BoxConstraints(),
                icon: const Icon(
                  Icons.remove,
                  color: Global.iconsColor,
                  size: 25,
                ),
                onPressed: () => onMinusPress(),
              ),
            ),
            Container(
              color: Global.gradTwo,
              child: Padding(
                padding: const EdgeInsets.only(top: 12, bottom: 12),
                child: Text(
                  LocaleKeys.floor_p.tr(
                      namedArgs: {'currentFloor': currentIntValue.toString()}),
                  style: Global.textChangeFloor,
                ),
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                color: Global.gradTwo,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
              ),
              child: IconButton(
                padding: const EdgeInsets.all(9),
                constraints: const BoxConstraints(),
                icon: const Icon(
                  Icons.add,
                  color: Global.iconsColor,
                  size: 25,
                ),
                onPressed: () => onPlusPress(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}