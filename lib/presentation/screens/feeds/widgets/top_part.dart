import 'package:flutter/material.dart';
import 'package:social_app/core/colors/colors.dart';
import 'package:social_app/presentation/screens/post/add_screen.dart';

import '../../../../core/constants/consts.dart';
import '../../post/add_smple.dart';

class TopBar extends StatelessWidget {
  const TopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0),
      child: Container(
        height: 50,
        padding: const EdgeInsets.symmetric(horizontal: 12),
        width: MediaQuery.of(context).size.width,
        color: kWhite,
        child: Row(
          children: [
            Text(
              'Tribe space',
              style: TextStyle(
                color: Theme.of(context).primaryColor,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Spacer(),
            IconButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const AddPostScreen(),
                  ));
                },
                icon: const Icon(
                  Icons.add,
                  size: 25,
                )),
            const Icon(Icons.favorite_border)
          ],
        ),
      ),
    );
  }
}
