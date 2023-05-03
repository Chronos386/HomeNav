import '../../res/global.dart';
import 'package:flutter/material.dart';
import '../../res/generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';

class CustomBottomAppBar extends StatelessWidget {
  const CustomBottomAppBar({
    Key? key,
    required this.thisIsAdded,
    required this.addToFavorite,
    required this.buildRoute,
  }) : super(key: key);
  final bool thisIsAdded;
  final VoidCallback addToFavorite;
  final VoidCallback buildRoute;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Global.bottomNavBarColor,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: SizedBox(
                height: 47,
                child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Global.gradTwo)),
                  onPressed: () => buildRoute(),
                  child: Text(
                    LocaleKeys.build_route.tr(),
                    style: Global.textRegular,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Container(
                decoration: const BoxDecoration(
                  color: Global.gradTwo,
                  borderRadius: BorderRadius.all(
                    Radius.circular(5),
                  ),
                ),
                child: IconButton(
                  padding: const EdgeInsets.all(12),
                  constraints: const BoxConstraints(),
                  icon: thisIsAdded
                      ? const Icon(
                          Icons.bookmark_added,
                          size: 20.0,
                        )
                      : const Icon(
                          Icons.bookmark_add_outlined,
                          size: 20.0,
                        ),
                  color: thisIsAdded
                      ? Global.iconAddedColor
                      : Global.iconBorderColor,
                  onPressed: () => addToFavorite(),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}