import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/post.dart';
import 'package:flutter_application_1/theme/app_theme.dart';

class PostDetailsPage extends StatelessWidget {
  final Post post;

  const PostDetailsPage({Key? key, required this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppTheme.primaryColor,
        title: Text(post.title),
      ),
      body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    height: 200,
                    width: 200,
                    child: Image.network(
                      '${post.image}',
                      height: 200,
                      width: 200,
                    )),
                const SizedBox(
                  height: 25,
                ),
                Text(post.title, style: AppTheme.title1),
                const SizedBox(
                  height: 15,
                ),
                Text('Description', style: AppTheme.description2),
                const SizedBox(
                  height: 5,
                ),
                Text(post.description, style: AppTheme.description1),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text((post.category).toString(), style: AppTheme.category),
                    Text('${(post.price).toString()}TL', style: AppTheme.price),
                  ],
                )
              ],
            ),
          )),
    );
  }
}
