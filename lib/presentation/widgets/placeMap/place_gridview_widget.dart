import '../../../res/global.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../viewModels/place_view_model.dart';
import '../../models/presentation_search_place.dart';

class PlaceGridViewWidget extends StatelessWidget {
  const PlaceGridViewWidget({Key? key, required this.urlPict})
      : super(key: key);
  final String urlPict;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final model = Provider.of<PlaceViewModel>(context);

    return GridView.builder(
      gridDelegate:
      const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1),
      itemCount: 1,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        List<PresentationSearchPlace> tilePositions = [model.searchPlace!];
        return Stack(
          alignment: Alignment.center,
          children: [
            Image(
              image: NetworkImage(urlPict),
            ),
            model.isScaled
                ? Stack(
              children: List.generate(
                tilePositions.length,
                    (idx) {
                  return Transform.translate(
                    offset: Offset(
                        size.width * tilePositions[idx].getResizedX(),
                        size.width * tilePositions[idx].getResizedY(),
                    ),
                    child: Stack(
                      alignment: Alignment.center,
                      children: const <Widget>[
                        CircleAvatar(
                          backgroundColor: Global.textColor,
                          radius: 5.0,
                          child: Center(
                            child: Icon(
                              Icons.place,
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
            )
                : Container(),
          ],
        );
      },
    );
  }
}