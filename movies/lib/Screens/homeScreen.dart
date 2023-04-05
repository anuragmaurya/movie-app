import 'package:flutter/material.dart';

import 'package:gap/gap.dart';
import 'package:movies/Screens/movies_description.dart';
import 'package:movies/repeated_function.dart/background_img.dart';
import 'package:movies/repeated_function.dart/movieType.dart';

import '../models/imageapi.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

int __currentIndex = 0;

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        extendBody: true,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        body: Stack(
          children: [
            BackgroundImage(image: imageapi[__currentIndex].img),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Gap(30),
                  Text(
                    imageapi[__currentIndex].name,
                    style: const TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.w500),
                  ),
                  const Gap(10),
                  Row(
                    children: [
                      moviesTypes("Action"),
                      const Gap(5),
                      moviesTypes("Sci-Fi"),
                      const Gap(5),
                      moviesTypes("Adventure"),
                    ],
                  ),
                  const Gap(15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      starRating(),
                      Container(
                        height: 40,
                        width: 130,
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 62, 62, 62),
                            borderRadius: BorderRadius.circular(20)),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(
                                Icons.play_circle_fill_outlined,
                                color: Colors.white,
                              ),
                              Gap(5),
                              Text(
                                "Watch Trailer",
                                style: TextStyle(color: Colors.white),
                              )
                            ]),
                      ),
                    ],
                  ),
                  const Gap(20),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const MoviesDescription()));
                    },
                    child: SizedBox(
                      // padding: EdgeInsets.symmetric(horizontal: 20),
                      height: 500,
                      child: PageView.builder(
                        onPageChanged: (index) {
                          setState(() {
                            __currentIndex = index;
                          });
                        },
                        itemCount: imageapi.length,
                        itemBuilder: (context, index) {
                          return Container(
                            margin: const EdgeInsets.symmetric(horizontal: 10),
                            height: 500,
                            width: 350,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(imageapi[index].img)),
                            ),
                          );
                        },
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ));
  }
}
