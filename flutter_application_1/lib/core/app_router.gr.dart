// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'app_router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    PostsListRoute.name: (routeData) {
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: PostsListPage(),
      );
    },
    PostDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<PostDetailsRouteArgs>();
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: PostDetailsPage(
          key: args.key,
          post: args.post,
        ),
      );
    },
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(
          '/#redirect',
          path: '/',
          redirectTo: '/HomeView',
          fullMatch: true,
        ),
        RouteConfig(
          PostsListRoute.name,
          path: '/HomeView',
        ),
        RouteConfig(
          PostDetailsRoute.name,
          path: '/SecondView',
        ),
      ];
}

/// generated route for
/// [PostsListPage]
class PostsListRoute extends PageRouteInfo<void> {
  const PostsListRoute()
      : super(
          PostsListRoute.name,
          path: '/HomeView',
        );

  static const String name = 'PostsListRoute';
}

/// generated route for
/// [PostDetailsPage]
class PostDetailsRoute extends PageRouteInfo<PostDetailsRouteArgs> {
  PostDetailsRoute({
    Key? key,
    required dynamic post,
  }) : super(
          PostDetailsRoute.name,
          path: '/SecondView',
          args: PostDetailsRouteArgs(
            key: key,
            post: post,
          ),
        );

  static const String name = 'PostDetailsRoute';
}

class PostDetailsRouteArgs {
  const PostDetailsRouteArgs({
    this.key,
    required this.post,
  });

  final Key? key;

  final dynamic post;

  @override
  String toString() {
    return 'PostDetailsRouteArgs{key: $key, post: $post}';
  }
}
