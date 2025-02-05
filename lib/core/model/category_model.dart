class CategoryModel {
  final String name;
  final String image;
  final String categoryNum;
  CategoryModel( {
    required this.categoryNum,
    required this.name,
    required this.image,
  });
}

List<CategoryModel> allCategories = [
  CategoryModel(
    name: "General Knowledge",
    image: "assets/img/category/knowledge.png",
    categoryNum: "9",
  ),
  CategoryModel(
    name: "Books",
    image: "assets/img/category/stack-of-books.png",
    categoryNum: "10",
  ),
  CategoryModel(
    name: "Film",
    image: "assets/img/category/watching-a-movie.png",
    categoryNum: "11",
  ),
  CategoryModel(
    name: "Music",
    image: "assets/img/category/music.png",
    categoryNum: "12",
  ),
  CategoryModel(
    name: "Musicals & Theatres",
    image: "assets/img/category/violin.png",
    categoryNum: "13",
  ),
  CategoryModel(
    name: "Television",
    image: "assets/img/category/television.png",
    categoryNum: "14",
  ),
  CategoryModel(
    name: "Video game",
    image: "assets/img/category/game-console.png",
    categoryNum: "15",
  ),
  CategoryModel(
    name: "Board Game",
    image: "assets/img/category/board-game.png",
    categoryNum: "16",
  ),
  CategoryModel(
    name: "Science & Nature",
    image: "assets/img/category/atom.png",
    categoryNum: "17",
  ),
  CategoryModel(
    name: "Computers",
    image: "assets/img/category/computer.png",
    categoryNum: "18",
  ),
  CategoryModel(
    name: "Mathematics",
    image: "assets/img/category/calculating.png",
    categoryNum: "19",
  ),
  CategoryModel(
    name: "Mythology",
    image: "assets/img/category/zeus.png",
    categoryNum: "20",
  ),
  CategoryModel(
    name: "Sports",
    image: "assets/img/category/sports.png",
    categoryNum: "21",
  ),
  CategoryModel(
    name: "Geography",
    image: "assets/img/category/globe.png",
    categoryNum: "22",
  ),
  CategoryModel(
    name: "History",
    image: "assets/img/category/school.png",
    categoryNum: "23",
  ),
  CategoryModel(
    name: "Politics",
    image: "assets/img/category/politician.png",
    categoryNum: "24",
  ),
  CategoryModel(
    name: "Art",
    image: "assets/img/category/palette.png",
    categoryNum: "25",
  ),
  CategoryModel(
    name: "Celebrities",
    image: "assets/img/category/cheers.png",
    categoryNum: "26",
  ),
  CategoryModel(
    name: "Animals",
    image: "assets/img/category/livestock.png",
    categoryNum: "27",
  ),
  CategoryModel(
    name: "Vehicles",
    image: "assets/img/category/fleet.png",
    categoryNum: "28",
  ),
  CategoryModel(
    name: "Comics",
    image: "assets/img/category/comic-book.png",
    categoryNum: "29",
  ),
  CategoryModel(
    name: "Gadget",
    image: "assets/img/category/gadget.png",
    categoryNum: "30",
  ),
  CategoryModel(
    name: "Japanese Anime & Manga",
    image: "assets/img/category/anime.png",
    categoryNum: "31",
  ),
  CategoryModel(
    name: "Cartoon & Anime",
    image: "assets/img/category/leonardo.png",
    categoryNum: "32",
  ),
];