import '../../res/global.dart';
import 'package:flutter/material.dart';
import '../../res/generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';

class OverlayWidget extends StatelessWidget {
  const OverlayWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      ignoring: true,
      child: Container(
        color: Global.bottomNavBarColor.withOpacity(0.85),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.touch_app,
                color: Global.textColor,
                size: 40.0,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                LocaleKeys.start_by_drag.tr(),
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Global.textColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}