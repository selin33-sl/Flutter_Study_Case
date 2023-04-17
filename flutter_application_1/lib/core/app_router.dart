import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/post_details_page.dart';
import 'package:flutter_application_1/view/posts_list_page.dart';
part "app_router.gr.dart";

@AdaptiveAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: PostsListPage, path: '/HomeView', initial: true),
    AutoRoute(page: PostDetailsPage, path: '/SecondView'),
  ],
)
class AppRouter extends _$AppRouter {}
