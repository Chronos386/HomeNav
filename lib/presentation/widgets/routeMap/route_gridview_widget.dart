import '../../../res/global.dart';
import 'package:get_it/get_it.dart';
import 'package:flutter/material.dart';
import '../../models/presentation_my_route.dart';
import '../../viewModels/my_route_view_model.dart';

class RouteGridViewWidget extends StatelessWidget {
  RouteGridViewWidget({Key? key, required this.urlPict, required this.floor})
      : super(key: key);
  final String urlPict;
  final int floor;
  var myRouteViewModel = GetIt.instance<MyRouteViewModel>();

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    List<PresentationRoute> tilePositions =
        List.generate(myRouteViewModel.myRoute!.route.length, (index) {
      return myRouteViewModel.myRoute!.route[index];
    }).where((element) {
      return element.floor == floor;
    }).toList();

    List<Icon> listIcons = [
      const Icon(
        Icons.circle,
        color: Global.myPosColor,
        size: 9,
      )
    ];
    if(tilePositions.isNotEmpty) {
      if (tilePositions[tilePositions.length - 1].floor ==
          myRouteViewModel
              .myRoute!.route[myRouteViewModel.myRoute!.route.length - 1].floor) {
        listIcons.add(
          const Icon(
            Icons.place,
            color: Global.myPosColor,
            size: 9,
          ),
        );
      } else {
        if (tilePositions[tilePositions.length - 1].floor >
            myRouteViewModel.myRoute!
                .route[myRouteViewModel.myRoute!.route.length - 1].floor) {
          listIcons.add(
            const Icon(
              Icons.arrow_downward,
              color: Global.myPosColor,
              size: 9,
            ),
          );
        } else {
          listIcons.add(
            const Icon(
              Icons.arrow_upward,
              color: Global.myPosColor,
              size: 9,
            ),
          );
        }
      }
    }

    List<PresentationRoute> tileMapPositions = [];
    if(tilePositions.isNotEmpty) {
      tileMapPositions.add(tilePositions[0]);
      tileMapPositions.add(tilePositions[tilePositions.length - 1]);
    }
    List<Offset> points = tilePositions
        .map((position) => Offset(
              size.width * position.getResizedX(),
              size.width * position.getResizedY(),
            ))
        .toList();
    return GridView.builder(
      gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1),
      itemCount: 1,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return Stack(
          alignment: Alignment.center,
          children: [
            Image(
              image: NetworkImage(urlPict),
            ),
            CustomPaint(
              painter: RoutePainter(points: points),
            ),
            Stack(
              children: List.generate(
                tileMapPositions.length,
                (idx) {
                  return Transform.translate(
                    offset: Offset(
                      size.width * tileMapPositions[idx].getResizedX(),
                      size.width * tileMapPositions[idx].getResizedY(),
                    ),
                    child: Stack(
                      alignment: Alignment.center,
                      children: <Widget>[
                        CircleAvatar(
                          backgroundColor: Global.textColor,
                          radius: 5.0,
                          child: Center(
                            child: listIcons[idx],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            )
          ],
        );
      },
    );
  }
}

class RoutePainter extends CustomPainter {
  final List<Offset> points;

  RoutePainter({required this.points});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.red
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2.0;
    final path = Path();
    for (var i = 0; i < points.length; i++) {
      final point = points[i];
      if (i == 0) {
        path.moveTo(point.dx, point.dy);
        path.lineTo(point.dx, point.dy);
      } else {
        path.lineTo(point.dx, point.dy);
      }
    }
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(RoutePainter oldDelegate) => oldDelegate.points != points;
}