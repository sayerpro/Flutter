class Sound {
  String title;
  String author;
  String cover;
  String time;

  Sound({this.title = "", this.author = "", this.cover = "", this.time = ""});
}

List<Sound> sounds = [
  Sound(title: "Fallen Shores", author: "Smitherens", cover: "assets/images/Yo.png", time: "01:50"),
  Sound(title: "Sing", author: "Blutengel", cover: "assets/images/alos.png", time: "00:42"),
  Sound(title: "Ilusión", author: "Die Antword", cover: "assets/images/Cooler.png", time: "02:28"),
  Sound(title: "No estas", author: "Honey", cover: "assets/images/Aro.jpg", time: "03:17"),
  Sound(title: "El velo", author: "Estados alterados", cover: "assets/images/nicesou.jpg", time: "06:09"),
];
