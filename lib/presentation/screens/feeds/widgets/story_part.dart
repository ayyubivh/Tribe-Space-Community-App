import 'package:flutter/material.dart';
import 'package:social_app/core/colors/colors.dart';

class StoryPart extends StatelessWidget {
  const StoryPart({super.key});

  @override
  Widget build(BuildContext context) {
    List tempImage = [
      "https://www.mykhel.com/thumb/250x90x250/football/players/8/61278.jpg",
      "https://images.hindustantimes.com/img/2022/04/29/1600x900/115d6d3e-c7bc-11ec-8b2d-b6dbe1b60323_1651244329705.jpg",
      "https://upload.wikimedia.org/wikipedia/commons/8/8c/Cristiano_Ronaldo_2018.jpg",
      "https://static.toiimg.com/photo/msid-93634317/93634317.jpg?39230",
      "https://images.news18.com/ibnlive/uploads/2022/08/andere.jpg",
      "https://idsb.tmgrup.com.tr/ly/uploads/images/2022/12/19/247181.jpg",
      "https://images.news18.com/ibnlive/uploads/2022/09/mammootty-movies-166246168616x9.jpg",
      "https://m.media-amazon.com/images/M/MV5BZjViNDQxZGEtNjkxMi00OTAwLTlmYmMtZWFlNzg3YjAwMDAzXkEyXkFqcGdeQXVyMjkxNzQ1NDI@._V1_FMjpg_UX1000_.jpg",
    ];
    return Container(
      color: kWhite,
      height: 92,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: tempImage.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4.0),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                          tempImage[index],
                        ),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(
                        width: 2,
                        color: kWhite,
                      ),
                    ),
                    width: 58,
                    height: 58,
                  ),
                ),
                Text(
                  'name',
                  style: TextStyle(
                    fontSize: 15,
                    color: gTextClr,
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
