import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
import 'package:social_app/core/colors/colors.dart';

class FullPhotoPage extends StatelessWidget {
  final String url;

  const FullPhotoPage({super.key, required this.url});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(backgroundColor: ,
      //   title: const Text(
      //     'Full Photo',
      //     style: TextStyle(color: kWhite),
      //   ),
      //   centerTitle: true,
      // ),
      body: PhotoView(
        imageProvider: NetworkImage(url),
      ),
    );
  }
}
