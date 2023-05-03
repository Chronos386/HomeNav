import '../../res/global.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../viewModels/floor_plan_view_model.dart';

class ResetButtonWidget extends StatelessWidget {
  const ResetButtonWidget({Key? key, required this.findMe}) : super(key: key);
  final VoidCallback findMe;

  @override
  Widget build(BuildContext context) {
    final model = Provider.of<FloorPlanModel>(context);
    return Align(
      alignment: Alignment.bottomRight,
      child: Padding(
        padding: const EdgeInsets.only(right: 10, bottom: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: FloatingActionButton(
                onPressed: () {
                  findMe();
                },
                backgroundColor: Global.gradTwo,
                child: Transform.rotate(
                  angle: 0.8,
                  child: const Icon(
                    Icons.navigation,
                    color: Global.iconBorderColor,
                  ),
                ),
              ),
            ),
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