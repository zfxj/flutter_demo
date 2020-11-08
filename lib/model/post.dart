class Post {
  const Post({this.title, this.auth, this.imgUrl});
  final String title;
  final String auth;
  final String imgUrl;
}

final List<Post> posts = [
  Post(
      auth: 'xj1',
      title: "11111",
      imgUrl: 'http://139.9.233.157:8080/zentao/file-read-1028.png'),
  Post(
      auth: 'xj2',
      title: "2222",
      imgUrl: 'http://139.9.233.157:8080/zentao/file-read-1028.png'),
  Post(
      auth: 'xj3',
      title: "2222",
      imgUrl: 'http://139.9.233.157:8080/zentao/file-read-1028.png'),
];
