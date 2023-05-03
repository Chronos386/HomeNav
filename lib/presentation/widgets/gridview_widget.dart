import '../../res/global.dart';
import 'package:get_it/get_it.dart';
import 'package:flutter/material.dart';
import '../viewModels/my_position_view_model.dart';

class GridViewWidget extends StatelessWidget {
  GridViewWidget({Key? key, required this.urlPict, required this.floor})
      : super(key: key);
  final String urlPict;
  final int floor;
  var myPositionViewModel = GetIt.instance<MyPositionViewModel>();

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return GridView.builder(
      gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1),
      itemCount: 1,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        List<MyPositionViewModel> tilePositions = [];
        if (myPositionViewModel.myPosition != null) {
          if (floor == myPositionViewModel.myPosition!.floor) {
            tilePositions.add(myPositionViewModel);
          }
        }
        return Stack(
          alignment: Alignment.center,
          children: [
            Image(
              image: NetworkImage(urlPict),
            ),
            Stack(
              children: List.generate(
                tilePositions.length,
                (idx) {
                  return Transform.translate(
                    offset: Offset(size.width * tilePositions[idx].position[0],
                        size.width * tilePositions[idx].position[1]),
                    child: Stack(
                      alignment: Alignment.center,
                      children: const <Widget>[
                        CircleAvatar(
                          backgroundColor: Global.textColor,
                          radius: 5.0,
                          child: Center(
                            child: Icon(
                              Icons.circle,
                              color: Global.myPosColor,
                              size: 9,
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        );
      },
    );
  }
}