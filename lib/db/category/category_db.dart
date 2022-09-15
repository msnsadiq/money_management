import 'package:hive/hive.dart';

import '../../models/category/category_model.dart';
const CATEGORY_DB_NAME = "category_database";

abstract class CategoryDbFunction {
Future<  List<CategoryModel>>getCategories();
  Future<void> InsertCategory(CategoryModel value);
}

class CategoryDB implements CategoryDbFunction {
  @override
  Future<void> InsertCategory(CategoryModel value) async{
   final _categoryDB = await Hive.openBox<CategoryModel>(CATEGORY_DB_NAME);
   _categoryDB.add(value);


  }

  @override
  Future<List<CategoryModel>> getCategories() async{
    final _categoryDB = await Hive.openBox<CategoryModel>(CATEGORY_DB_NAME);
    return _categoryDB.values.toList(

    );
  }
}
