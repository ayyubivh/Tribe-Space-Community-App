// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:social_app/core/colors/colors.dart';

class Loader extends StatelessWidget {
  final Color? color;
  const Loader({
    Key? key,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(
        color: color ?? primaryColor,
      ),
    );
  }
}
