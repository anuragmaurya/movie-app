import 'dart:ui';

import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

Widget moviesTypes(String type) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 3),
    decoration: BoxDecoration(
        border:
            Border.all(width: 0.9, color: Color.fromARGB(255, 255, 255, 255)),
        borderRadius: BorderRadius.circular(25)),
    child: Center(
      child: Text(
        type,
        style: const TextStyle(color: Colors.white, fontSize: 12),
      ),
    ),
  );
}

Widget starRating() {
  return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
    Row(
      children: const [
        Icon(
          FluentSystemIcons.ic_fluent_star_filled,
          color: Colors.amber,
          size: 20,
        ),
        Gap(5),
        Text(
          "8.7/10 193k votes",
          style: TextStyle(
              color: Colors.white, decoration: TextDecoration.underline),
        ),
      ],
    )
  ]);
}

Widget movieCast(String img, realname, moviename) {
  return Column(
    children: [
      Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            // borderRadius: BorderRadius.circular(20),
            image: DecorationImage(image: NetworkImage(img))),
      ),
      const Gap(5),
      Text(
        realname,
        style: const TextStyle(
            color: Colors.white, fontSize: 14, fontWeight: FontWeight.w500),
      ),
      const Gap(4),
      Text(
        moviename,
        style: const TextStyle(
            color: Color.fromARGB(255, 210, 210, 210), fontSize: 14),
      )
    ],
  );
}

Widget peopleReview() {
  return Stack(
    children: [
      ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: ImageFiltered(
          imageFilter: ImageFilter.blur(sigmaX: 70, sigmaY: 100),
          child: const Image(
              width: 350,
              height: 170,
              fit: BoxFit.cover,
              image:
                  NetworkImage("https://wallpapercave.com/wp/wp11685736.jpg")),
        ),
      ),
      Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          children: [
            Row(
              children: [
                const CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://media.istockphoto.com/id/1412730914/photo/confident-young-entrepreneur.jpg?b=1&s=170667a&w=0&k=20&c=fB94dfCRcCIUBIjQEO9UJZCOxCkKFhCwwthXI-ZZc1c="),
                ),
                const Gap(15),
                Column(
                  children: [
                    const Text(
                      "Jack Daniel",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                    Row(
                      children: const [
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                          size: 20,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                          size: 20,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                          size: 20,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                          size: 20,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                          size: 20,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            const Gap(10),
            // const Text(
            //   " Stunning Sequel. My rating : 5/5 Performances : James Cameron is known for getting the optimum out of his cast and crew. All the actors came up with brilliant performances. Jakes Sully standout by showing variations in expressions ",
            //   style: TextStyle(
            //     color: Colors.white,
            //   ),
            // )
          ],
        ),
      )
    ],
  );
}

Widget recomMovies(String img, moviename, wood) {
  return Column(
    children: [
      Container(
        height: 200,
        width: 150,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.black,
            image:
                DecorationImage(fit: BoxFit.cover, image: NetworkImage(img))),
      ),
      const Gap(7),
      Text(
        moviename,
        style: const TextStyle(
            color: Colors.white, fontWeight: FontWeight.w400, fontSize: 18),
      ),
      Text(
        wood,
        style: const TextStyle(
            color: Color.fromARGB(255, 198, 197, 197),
            fontWeight: FontWeight.w400,
            fontSize: 15),
      ),
    ],
  );
}
