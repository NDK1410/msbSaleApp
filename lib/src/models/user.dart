class User {
  String name;
  String avatar;
  String address;

  User({this.name, this.avatar, this.address});
}

List<User> listUsers() {
  List<User> users = List();
  users.add(User(
      name: "Fernando Torres",
      address: "Municipality of Fuenlabrada, Spain",
      avatar: "https://i.ytimg.com/vi/h0N67Mh7htE/maxresdefault.jpg"));
  users.add(User(
      name: "Cristiano ronaldo",
      address: "Hospital Dr. Nélio Mendonça, Funchal, Bồ Đào Nha",
      avatar:
          "https://specials-images.forbesimg.com/imageserve/5d2388f14c687b00085c0f91/416x416.jpg?background=000000&cropX1=0&cropX2=1559&cropY1=130&cropY2=1690"));
  users.add(User(
      name: "Lionel Messi",
      address: "Rosario - Argentina",
      avatar:
          "https://e0.365dm.com/20/09/2048x1152/skysports-lionel-messi-barcelona_5113303.jpg"));
  users.add(User(
      name: "Gianluigi Buffon",
      address: "Carrara - Italia",
      avatar:
          "https://upload.wikimedia.org/wikipedia/commons/thumb/5/54/Gianluigi_Buffon_%2831784615942%29_%28cropped%29.jpg/1200px-Gianluigi_Buffon_%2831784615942%29_%28cropped%29.jpg"));
  users.add(User(
      name: "Ronaldo De Lima",
      address: "Rio de Janeiro, State of Rio de Janeiro, Brazil",
      avatar:
          "https://tmssl.akamaized.net/images/foto/normal/ronaldo-luis-nazario-de-lima-1472042256-5977.jpg"));
  users.add(User(
      name: "Adriano Leite Ribeiro",
      address: "Rio de Janeiro, State of Rio de Janeiro, Brazil",
      avatar:
          "https://i2.wp.com/thesefootballtimes.co/wp-content/uploads/2015/07/Adriano-1200x630.jpg"));
  users.add(User(
      name: "Michael Ballack",
      address: "Görlitz, Germany",
      avatar:
          "https://e0.365dm.com/20/03/768x432/skysports-ballack-michael-chelsea_4952227.jpg?20200321052526"));
  users.add(User(
      name: "Zlatan Ibrahimović",
      address: "Malmö, Sweden",
      avatar:
          "https://en.as.com/en/imagenes/2020/02/05/football/1580903816_152690_noticia_normal.jpg"));
  users.add(User(
      name: "Alan Smith",
      address: "Rothwell, United Kingdom",
      avatar:
          "https://www.thesun.co.uk/wp-content/uploads/2018/10/NINTCHDBPICT000003158527.jpg"));
  users.add(User(
      name: "Samuel Eto'o",
      address: "Douala, Cameroon",
      avatar:
          "https://znews-photo.zadn.vn/w660/Uploaded/pgi_ubnvgunau/2019_09_07/EtooRU.jpg"));
  users.add(User(
      name: "Steven Gerrard",
      address: "Whiston, United Kingdom",
      avatar:
          "https://d3j2s6hdd6a7rg.cloudfront.net/v2/uploads/media/default/0001/31/thumb_30605_default_news_size_5.jpeg"));
  return users;
}
