// ignore_for_file: public_member_api_docs, sort_constructors_first
class ImageApi {
  String img;
  String name;
  ImageApi({
    required this.img,
    required this.name,
  });
}

List<ImageApi> imageapi = [
  ImageApi(img: "https://wallpapercave.com/wp/wp11685736.jpg", name: "Avatar"),
  ImageApi(
      img: "https://cinematoday.net/data/upload/movies/2022/varisu.jpg",
      name: "Varisu"),
  ImageApi(
      img:
          "https://www.justwatch.com/images/poster/300177312/s332/spider-man-no-way-home",
      name: "Spider Man No-way Home"),
  ImageApi(
      img:
          "https://images-2.rakuten.tv/storage/global-movie/translation/artwork/4a622aec-0ab7-43ea-b44d-9c69ee301ae8-jumanji-welcome-to-the-jungle-1611412013-width317-quality60.jpeg",
      name: "Jumanji"),
  ImageApi(
      img:
          "https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC:w-400.0,h-660.0,cm-pad_resize,bg-000000,fo-top:oi-discovery-catalog@@icons@@like_202006280402.png,ox-24,oy-617,ow-29:q-80/et00331997-ttsneqynsc-portrait.jpg",
      name: "Dhrishyam"),
];
