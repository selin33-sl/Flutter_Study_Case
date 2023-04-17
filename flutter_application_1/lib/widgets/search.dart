import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/app_router.dart';
import 'package:flutter_application_1/main.dart';
import 'package:flutter_application_1/model/post.dart';

class PostSearchDelegate extends SearchDelegate {
  final List<Map<String, dynamic>> posts;

  PostSearchDelegate(this.posts);

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: const Icon(Icons.clear),
        onPressed: () => query = '',
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () => close(context, null),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    final results = posts
        .where(
            (post) => post['title'].toLowerCase().contains(query.toLowerCase()))
        .map((post) => Post.fromJson(post))
        .toList();
    return ListView.builder(
      itemCount: results.length,
      itemBuilder: (BuildContext context, int index) {
        final post = results[index];
        return ListTile(
          title: Text(post.title),
          onTap: () {
            close(context, post);
            router.push(PostDetailsRoute(post: post));
          },
        );
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestions = query.isEmpty
        ? []
        : posts
            .where((post) =>
                post['title'].toLowerCase().startsWith(query.toLowerCase()))
            .map((post) => Post.fromJson(post))
            .toList();
    return ListView.builder(
      itemCount: suggestions.length,
      itemBuilder: (BuildContext context, int index) {
        final post = suggestions[index];
        return ListTile(
          leading: const Icon(Icons.search),
          title: Text(post.title),
          onTap: () {
            close(context, post);
            router.push(PostDetailsRoute(post: post));
          },
        );
      },
    );
  }
}
