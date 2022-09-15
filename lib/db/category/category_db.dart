import '../../models/category/category_model.dart';

abstract class CategoryDbFunction {
  //List<CategoryModel>getCategories();
  Future<void> InsertCategory(CategoryModel value);
}

class CategoryDB implements CategoryDbFunction {
  @override
  Future<void> InsertCategory(CategoryModel value) {
    // TODO: implement InsertCategory
    throw UnimplementedError();
  }
}
