import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../viewModels/place_view_model.dart';
import 'package:vector_math/vector_math_64.dart' show Vector3;

class RemoveScrollGlow extends ScrollBehavior {
  Widget buildViewportChrome(
      BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }
}

class PlaceRawGestureDetectorWidget extends StatelessWidget {
  const PlaceRawGestureDetectorWidget({Key? key, required this.child})
      : super(key: key);
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final model = Provider.of<PlaceViewModel>(context);

    final AlignmentGeometry alignment = FractionalOffset.fromOffsetAndRect(
      Offset(
        size.width / 2.0,
        size.height / 2.0,
      ),
      Rect.fromLTRB(
        0.0,
        0.0,
        size.width,
        size.height,
      ),
    );

    final Matrix4 transform = Matrix4.diagonal3(
      Vector3(
        model.scale,
        model.scale,
        model.scale,
      ),
    )..translate(
      model.pos.x,
      model.pos.y,
    );

    return RawGestureDetector(
      child: Transform(
        alignment: alignment,
        transform: transform,
        child: ScrollConfiguration(
          behavior: RemoveScrollGlow(),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: child,
          ),
        ),
      ),
    );
  }
}