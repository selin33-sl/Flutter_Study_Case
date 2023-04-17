import 'package:get/get.dart';
import 'package:dio/dio.dart';

class PostsController extends GetxController {
  var posts = [].obs;

  PostsController() {
    fetchData();
  }

  void fetchData() async {
    final response = await Dio().get('https://fakestoreapi.com/products');
    posts.assignAll(response.data);
  }
}
