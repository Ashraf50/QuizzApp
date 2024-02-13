class CategoryModel {
  final String name;
  final String image;
  CategoryModel({
    required this.name,
    required this.image,
  });
}

List<CategoryModel> allCategories = [
  CategoryModel(
    name: "General Knowledge",
    image: "assets/img/category/knowledge.png",
  ),
  CategoryModel(
    name: "Books",
    image: "assets/img/category/stack-of-books.png",
  ),
  CategoryModel(
    name: "Film",
    image: "assets/img/category/watching-a-movie.png",
  ),
  CategoryModel(
    name: "Music",
    image: "assets/img/category/music.png",
  ),
  CategoryModel(
    name: "Musicals & Theatres",
    image: "assets/img/category/violin.png",
  ),
  CategoryModel(
    name: "Television",
    image: "assets/img/category/television.png",
  ),
  CategoryModel(
    name: "Video game",
    image: "assets/img/category/game-console.png",
  ),
  CategoryModel(
    name: "Board Game",
    image: "assets/img/category/board-game.png",
  ),
  CategoryModel(
    name: "Science & Nature",
    image: "assets/img/category/atom.png",
  ),
  CategoryModel(
    name: "Computers",
    image: "assets/img/category/computer.png",
  ),
  CategoryModel(
    name: "Mathematics",
    image: "assets/img/category/calculating.png",
  ),
  CategoryModel(
    name: "Mythology",
    image: "assets/img/category/zeus.png",
  ),
  CategoryModel(
    name: "Sports",
    image: "assets/img/category/sports.png",
  ),
  CategoryModel(
    name: "Geography",
    image: "assets/img/category/globe.png",
  ),
  CategoryModel(
    name: "History",
    image: "assets/img/category/school.png",
  ),
  CategoryModel(
    name: "Politics",
    image: "assets/img/category/politician.png",
  ),
  CategoryModel(
    name: "Art",
    image: "assets/img/category/palette.png",
  ),
  CategoryModel(
    name: "Celebrities",
    image: "assets/img/category/cheers.png",
  ),
  CategoryModel(
    name: "Animals",
    image: "assets/img/category/livestock.png",
  ),
  CategoryModel(
    name: "Vehicles",
    image: "assets/img/category/fleet.png",
  ),
  CategoryModel(
    name: "Comics",
    image: "assets/img/category/comic-book.png",
  ),
  CategoryModel(
    name: "Gadget",
    image: "assets/img/category/gadget.png",
  ),
  CategoryModel(
    name: "Japanese Anime & Manga",
    image: "assets/img/category/anime.png",
  ),
  CategoryModel(
    name: "Cartoon & Anime",
    image: "assets/img/category/leonardo.png",
  ),
];

//https://opentdb.com/api.php?amount=10&category=9&difficulty=easy&type=multiple
