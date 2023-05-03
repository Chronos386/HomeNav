import '../../../res/global.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../viewModels/route_plane_view_model.dart';

class RouteResetButtonWidget extends StatelessWidget {
  const RouteResetButtonWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final model = Provider.of<RoutePlaneViewModel>(context);
    return Align(
      alignment: Alignment.bottomRight,
      child: Padding(
        padding: const EdgeInsets.only(right: 10, bottom: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              onPressed: () {
                model.reset();
              },
              backgroundColor: Global.gradTwo,
              child: const Icon(
                Icons.refresh,
                color: Global.iconBorderColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}