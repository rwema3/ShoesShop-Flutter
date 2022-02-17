class CategoriesModel {
  String image;
  String title;

  CategoriesModel({this.image, this.title});
}

List<CategoriesModel> categoriesModel = [
  CategoriesModel(
    image: "assets/icons/shoes.svg",
    title: "Sneakers",
  ),
  CategoriesModel(
    image: "assets/icons/watch.svg",
    title: "Watch",
  ),
  CategoriesModel(
    image: "assets/icons/backpack.svg",
    title: "Backpack",
  ),
];
