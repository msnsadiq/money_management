enum CatergoryType {
  income,
  expense,
}

class CategoryModel {
  final String name;
  final bool isDeleted;
  final CatergoryType type;

  CategoryModel(
      {required this.name, required this.type, this.isDeleted = false});
}
