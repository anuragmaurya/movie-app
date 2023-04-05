import 'dart:ui';

import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:gap/gap.dart';
import 'package:movies/repeated_function.dart/background_img.dart';
import 'package:movies/repeated_function.dart/header.dart';

import '../models/imageapi.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBody: true,
        body: Stack(children: [
          BackgroundImage(image: imageapi[0].img),
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Gap(40),
                    Text(
                      "Search",
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                    ),
                    const Gap(20),
                    Container(
                      // margin: const EdgeInsets.symmetric(horizontal: 20),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Color.fromARGB(255, 85, 85, 85)),
                      child: TextFormField(
                        style:
                            const TextStyle(fontSize: 17, color: Colors.white),
                        decoration: const InputDecoration(
                            fillColor: Colors.white,
                            hintText: "Search",
                            hintStyle: TextStyle(color: Colors.white),
                            prefixIcon: Icon(
                              FluentSystemIcons.ic_fluent_search_filled,
                              color: Colors.white,
                            ),
                            border: InputBorder.none),
                      ),
                    ),
                    Gap(20),
                    HeaderText(name: "Trending"),
                    Gap(10),
                    Container(
                      height: 260,
                      child: ListView.builder(
                        padding: EdgeInsets.zero,
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemCount: imageapi.length,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              Container(
                                margin: EdgeInsets.only(right: 20),
                                height: 220,
                                width: 180,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image:
                                            NetworkImage(imageapi[index].img))),
                              ),
                              Gap(10),
                              Text(imageapi[index].name,
                                  style: const TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400))
                            ],
                          );
                        },
                      ),
                    ),
                    const Gap(10),
                    const HeaderText(name: "Recommended for you"),
                    Gap(10),
                    Container(
                      height: 260,
                      child: ListView.builder(
                        padding: EdgeInsets.zero,
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemCount: imageapi.length,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              Container(
                                margin: EdgeInsets.only(right: 20),
                                height: 220,
                                width: 180,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image:
                                            NetworkImage(imageapi[index].img))),
                              ),
                              Gap(10),
                              Text(imageapi[index].name,
                                  style: const TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400))
                            ],
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ]));
  }
}
