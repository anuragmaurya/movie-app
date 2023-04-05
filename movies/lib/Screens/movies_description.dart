import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:movies/Screens/bottomBar.dart';

import 'package:movies/repeated_function.dart/background_img.dart';
import 'package:movies/repeated_function.dart/movieType.dart';
import 'package:readmore/readmore.dart';

class MoviesDescription extends StatefulWidget {
  const MoviesDescription({Key? key}) : super(key: key);

  @override
  State<MoviesDescription> createState() => _MoviesDescriptionState();
}

class _MoviesDescriptionState extends State<MoviesDescription> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Align(
        alignment: Alignment.bottomCenter,
        child: FloatingActionButton.extended(
          onPressed: () {},
          label: const Text("Book Ticket"),
          backgroundColor: Colors.amber,
        ),
      ),
      extendBodyBehindAppBar: true,
      extendBody: true,
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        leading: IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const BottomBar()));
            },
            icon: const Icon(Icons.arrow_back_ios_new)),
      ),
      body: Stack(
        children: [
          BackgroundImage(
            image:
                "https://w0.peakpx.com/wallpaper/872/1020/HD-wallpaper-2021-avatar-2-films-poster.jpg",
          ),
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(70),
                      bottomRight: Radius.circular(70)),
                  child: Image.network(
                    "https://w0.peakpx.com/wallpaper/872/1020/HD-wallpaper-2021-avatar-2-films-poster.jpg",
                    fit: BoxFit.cover,
                    height: 320,
                    width: 400,
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Avatar 2",
                          style: TextStyle(
                            fontSize: 27,
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          )),
                      const Gap(10),
                      Row(
                        children: [
                          moviesTypes("Action"),
                          const Gap(8),
                          moviesTypes("Sci-Fi"),
                          const Gap(8),
                          moviesTypes("Adventure"),
                        ],
                      ),
                      const Gap(15),
                      starRating(),
                      const Gap(30),
                      const Divider(
                        color: Color.fromARGB(255, 135, 159, 167),
                        height: 5,
                      ),
                      const Gap(10),
                      const Text(
                        "Description",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w500),
                      ),
                      const Gap(8),
                      const ReadMoreText(
                        "A paraplegic Marine dispatched to the moon Pandora on a unique mission becomes torn between following his orders and protecting the world he feels is his home."
                        "When his brother is killed in a robbery, paraplegic Marine Jake Sully decides to take his place in a mission on the distant world of Pandora. There he learns of greedy corporate figurehead Parker Selfridge's intentions of driving off the native humanoid "
                        "Na'vi"
                        "in order to mine for the precious material scattered throughout their rich woodland. In exchange for the spinal surgery that will fix his legs, Jake gathers knowledge, of the Indigenous Race and their Culture, for the cooperating military unit spearheaded by gung-ho Colonel Quaritch, while simultaneously attempting to infiltrate the Na'vi people with the use of an 'avatar' identity. While Jake begins to bond with the native tribe and quickly falls in love with the beautiful alien Neytiri, the restless Colonel moves forward with his ruthless extermination tactics, forcing the soldier to take a stand - and fight back in an epic battle for the fate of Pandora.   ",
                        trimLines: 5,
                        textAlign: TextAlign.justify,
                        trimMode: TrimMode.Line,
                        trimCollapsedText: "Read More",
                        trimExpandedText: "Show less",
                        lessStyle: TextStyle(
                            decoration: TextDecoration.underline,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                        moreStyle: TextStyle(
                            decoration: TextDecoration.underline,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                        style: TextStyle(
                            fontSize: 15,
                            color: Color.fromARGB(255, 227, 227, 227)),
                      ),
                      const Gap(30),
                      const Text(
                        "Cast",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      const Gap(20),
                      SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              movieCast(
                                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQPtq13-Udfmk44-hFTNjbBz0UDx4iVZ3IA17IpYiBzuWuzrqI0H2IXKvw&s=10",
                                  "Sam Worthington",
                                  "Sam Jully"),
                              const Gap(20),
                              movieCast(
                                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQz5UVhPPYJxBwIOnd8dTaHK7tWIfHlReVp2YoyKGlwybZIL4oLanWOsHY&s=10",
                                  "Zoe Saldaña",
                                  " Neytiri"),
                              const Gap(20),
                              movieCast(
                                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRtJYAWJEFsaoBploA8Hf1Z5ajSq0RAKtIQm-xKrYnbzI2Jag09aQ7i79E&s=10",
                                  "Sigourney Weaver",
                                  " Kiri Jully"),
                              const Gap(20),
                              movieCast(
                                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR1u-COJFwDcLELq_yLDkVvht4fDlPtXi8AtO9AY5veQt-sZSpv7G2vwWM&s=10",
                                  "Kate Winslet",
                                  " Ronal"),
                              const Gap(20),
                              movieCast(
                                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSYYycSrd2ANMacjZcyqS0P2wte0WZBAqphLQdoAAGAqZrbAQyDVKtjb9g&s=10",
                                  "Stephen Lang",
                                  " Miles Quaritch"),
                            ],
                          )),
                      const Gap(30),
                      const Divider(
                        height: 4,
                        color: Colors.white,
                      ),
                      const Gap(20),
                      const Text(
                        "Review",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      const Gap(20),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            peopleReview(),
                          ],
                        ),
                      ),
                      const Gap(30),
                      const Text(
                        "Recommended Movies",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      const Gap(20),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            recomMovies(
                                "https://cinematoday.net/data/upload/movies/2022/varisu.jpg",
                                "Varisu",
                                "Drama/Action"),
                            const Gap(20),
                            recomMovies(
                                "https://www.justwatch.com/images/poster/300177312/s332/spider-man-no-way-home",
                                "Spiderman No Way Home ",
                                "Action/Thriller"),
                            const Gap(20),
                            recomMovies(
                                "https://images-2.rakuten.tv/storage/global-movie/translation/artwork/4a622aec-0ab7-43ea-b44d-9c69ee301ae8-jumanji-welcome-to-the-jungle-1611412013-width317-quality60.jpeg",
                                "Jumanji",
                                "Thriller/Action"),
                            const Gap(20),
                            recomMovies(
                                "https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC:w-400.0,h-660.0,cm-pad_resize,bg-000000,fo-top:oi-discovery-catalog@@icons@@like_202006280402.png,ox-24,oy-617,ow-29:q-80/et00331997-ttsneqynsc-portrait.jpg",
                                "Drishyam 2",
                                "Drama/Thriller"),
                            const Gap(20),
                          ],
                        ),
                      ),
                      const Gap(20),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
