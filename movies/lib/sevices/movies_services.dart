// import 'dart:convert';

// import 'package:movies/models/moviesapi.dart';
// import 'package:http/http.dart' as http;

// class MoviesServices {
//   List<Movies> profileList = [];

//   Future<List<Movi>> getMovies() async {
//     final response = await http.get(Uri.parse(
//         "https://api.themoviedb.org/3/movie/550?api_key=51cc7cd97a4b401086872f56df3005b3"));
//     var data = jsonDecode(response.body.toString());

//     if (response.statusCode == 200) {
//       for (var i in data) {
//         profileList.add(WorldStatus.fromJson(i));
//       }
//       return profileList;
//     } else {
//       return profileList;
//     }
//   }
// }
