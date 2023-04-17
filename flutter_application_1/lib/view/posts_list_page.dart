import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/app_router.dart';
import 'package:flutter_application_1/main.dart';
import 'package:flutter_application_1/model/post.dart';
import 'package:flutter_application_1/controller/posts_controller.dart';
import 'package:flutter_application_1/theme/app_theme.dart';
import 'package:flutter_application_1/widgets/search.dart';
import 'package:get/get.dart';

class PostsListPage extends StatelessWidget {
  final controller = Get.put(PostsController());

  String _searchQuery = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppTheme.primaryColor,
        title: Text(_searchQuery.isEmpty
            ? 'Ürün Listesi'
            : 'Arama Sonuçları: $_searchQuery'),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () => showSearch(
                context: context,
                delegate: PostSearchDelegate(
                    controller.posts.toList().cast<Map<String, dynamic>>())),
          ),
        ],
      ),
      body: Obx(() => ListView.builder(
          itemCount: controller.posts.length,
          itemBuilder: (context, index) {
            final post = controller.posts[index];
            var borderRadius = const BorderRadius.only(
                topRight: Radius.circular(32),
                bottomRight: Radius.circular(32));
            return Container(
              margin: const EdgeInsets.all(16.0),
              padding: const EdgeInsets.all(3.0),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: AppTheme.primaryColor,
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(10.0),
                  gradient: const LinearGradient(
                      colors: [AppTheme.grey, AppTheme.accentColor]),
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.grey,
                        blurRadius: 2.0,
                        offset: Offset(2.0, 2.0))
                  ]),
              child: Align(
                child: ListTile(
                  shape: RoundedRectangleBorder(borderRadius: borderRadius),
                  leading: Container(
                      child: Image.network(
                    '${post['image']}',
                  )),
                  title: Text(post['title'], style: AppTheme.title2),
                  subtitle: Text(
                    post['category'],
                    style: AppTheme.category2,
                  ),
                  onTap: () {
                    router.push(PostDetailsRoute(post: Post.fromJson(post)));
                  },
                ),
              ),
            );
          })),
    );
  }
}
