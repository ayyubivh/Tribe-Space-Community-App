import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:social_app/core/colors/colors.dart';

class ImageListView extends StatelessWidget {
  const ImageListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: MasonryGridView.count(
        crossAxisCount: 3,
        mainAxisSpacing: 8,
        crossAxisSpacing: 2,
        itemCount: 6,
        itemBuilder: (context, index) {
          return CachedNetworkImage(
            imageUrl: introImage[index].productImageUrl,
            imageBuilder: (context, imageProvider) {
              // return Container(
              //   margin: const EdgeInsets.only(
              //     right: 3.0,
              //     left: 3.0,
              //     top: 10.0,
              //   ),
              //   height: 148,
              //   width: 152,
              //   decoration: BoxDecoration(
              //     border: Border.all(color: kWhite, width: 2),
              //     borderRadius: BorderRadius.circular(20.0),
              //     image: DecorationImage(
              //       image: imageProvider,
              //       fit: BoxFit.cover,
              //     ),
              //   ),
              // );

              return Padding(
                  padding: const EdgeInsets.all(3),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: kWhite, width: 2),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image(
                        image: imageProvider,
                        fit: BoxFit.cover,
                        height: index % 6 == 0 ? 100 : null,
                      ),
                    ),
                  ));
            },
          );
        },
      ),
    );
  }
}

class Produt {
  final String productImageUrl;

  Produt(this.productImageUrl);
}

final introImage = [
  Produt(
      "https://burst.shopifycdn.com/photos/fashion-model-poses.jpg?width=925&format=pjpg&exif=1&iptc=1"),
  Produt(
    "https://images.unsplash.com/photo-1543610892-0b1f7e6d8ac1?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8cHJvZmlsZSUyMGltYWdlc3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
  ),
  Produt(
    "https://images.unsplash.com/photo-1488161628813-04466f872be2?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzV8fG1lbnN8ZW58MHx8MHx8&auto=format&fit=crop&w=1000&q=60",
  ),
  Produt(
    "https://images.pexels.com/photos/5384445/pexels-photo-5384445.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
  ),
  Produt(
      "https://images.pexels.com/photos/1559486/pexels-photo-1559486.jpeg?auto=compress&cs=tinysrgb&w=600"),
  Produt(
    "https://images.pexels.com/photos/6976943/pexels-photo-6976943.jpeg?auto=compress&cs=tinysrgb&w=600",
  ),
  Produt(
      "https://images.unsplash.com/photo-1586907835000-f692bbd4c9e0?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=361&q=80"),
  Produt(
      "https://images.unsplash.com/photo-1519058082700-08a0b56da9b4?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDkyfHxtZW5zfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60"),
  Produt(
      "https://images.pexels.com/photos/1898555/pexels-photo-1898555.jpeg?auto=compress&cs=tinysrgb&w=400"),
];
