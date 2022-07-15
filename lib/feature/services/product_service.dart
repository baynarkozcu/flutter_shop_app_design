import 'package:shop_app_design/feature/models/product_model.dart';

import '../models/category_model.dart';

class ProductService {
  Future<List<Product>?> fetchNewArrivalProductList() async {
    try {
      final response = Product.demoProducts;
      var result = response.map((json) => Product.fromJson(json)).toList().sublist(0, 10);
      await Future.delayed(const Duration(seconds: 3));
      return result;
    } catch (e) {
      return null;
    }
  }

  Future<List<Product>> fetchPopulerProductList() async {
    final response = Product.demoProducts;
    var result = response.map((json) => Product.fromJson(json)).toList().sublist(10, 19);
    await Future.delayed(const Duration(seconds: 3));
    return result;
  }

    Future<List<Category>> fetchCategoryList() async {
    final response = Category.demoCategories;
    var result = response.map((json) => Product.fromJson(json)).toList().sublist(10, 19);
    await Future.delayed(const Duration(seconds: 3));
    return result;
  }
}
