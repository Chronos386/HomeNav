import '../../res/global.dart';
import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
import 'package:share_plus/share_plus.dart';

class MyPhotoViewPage extends StatefulWidget {
  final String imageUrl;

  const MyPhotoViewPage({super.key, required this.imageUrl});

  @override
  State<MyPhotoViewPage> createState() => _MyPhotoViewPageState();
}

class _MyPhotoViewPageState extends State<MyPhotoViewPage> {
  bool showAppBar = true;
  final _controller = PhotoViewController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Global.photoBackgroundColor,
      appBar: showAppBar
          ? AppBar(
              backgroundColor: Global.appBarPhotoColor,
              leading: IconButton(
                icon: const Icon(
                  Icons.arrow_back,
                  color: Global.textColor,
                ),
                onPressed: () {
                  setState(() {
                    _controller.reset();
                  });
                  Navigator.of(context).pop();
                },
              ),
              actions: [
                IconButton(
                  icon: const Icon(
                    Icons.share,
                    color: Global.textColor,
                  ),
                  onPressed: () async {
                    Share.share(widget.imageUrl);
                  },
                ),
              ],
            )
          : AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0.0,
              automaticallyImplyLeading: false,
            ),
      body: GestureDetector(
        onTap: () {
          setState(() {
            showAppBar = !showAppBar;
          });
        },
        child: PhotoView(
          controller: _controller,
          imageProvider: NetworkImage(widget.imageUrl),
          minScale: PhotoViewComputedScale.contained * 1,
          maxScale: PhotoViewComputedScale.covered * 2,
          backgroundDecoration: const BoxDecoration(
            color: Global.photoBackgroundColor,
          ),
        ),
      ),
    );
  }
}
