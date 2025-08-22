// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:api_test/src/presentation/views/home/homescreen.dart' as _i1;
import 'package:api_test/src/presentation/views/login/loginscreen.dart' as _i2;
import 'package:api_test/src/presentation/views/profile/profile_screen.dart'
    as _i3;
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;

/// generated route for
/// [_i1.HomeScreen]
class HomeRoute extends _i4.PageRouteInfo<void> {
  const HomeRoute({List<_i4.PageRouteInfo>? children})
    : super(HomeRoute.name, initialChildren: children);

  static const String name = 'HomeRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      return const _i1.HomeScreen();
    },
  );
}

/// generated route for
/// [_i2.LoginScreen]
class LoginRoute extends _i4.PageRouteInfo<void> {
  const LoginRoute({List<_i4.PageRouteInfo>? children})
    : super(LoginRoute.name, initialChildren: children);

  static const String name = 'LoginRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      return const _i2.LoginScreen();
    },
  );
}

/// generated route for
/// [_i3.ProfileScreen]
class ProfileRoute extends _i4.PageRouteInfo<ProfileRouteArgs> {
  ProfileRoute({
    _i5.Key? key,
    required int userId,
    List<_i4.PageRouteInfo>? children,
  }) : super(
         ProfileRoute.name,
         args: ProfileRouteArgs(key: key, userId: userId),
         initialChildren: children,
       );

  static const String name = 'ProfileRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ProfileRouteArgs>();
      return _i3.ProfileScreen(key: args.key, userId: args.userId);
    },
  );
}

class ProfileRouteArgs {
  const ProfileRouteArgs({this.key, required this.userId});

  final _i5.Key? key;

  final int userId;

  @override
  String toString() {
    return 'ProfileRouteArgs{key: $key, userId: $userId}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! ProfileRouteArgs) return false;
    return key == other.key && userId == other.userId;
  }

  @override
  int get hashCode => key.hashCode ^ userId.hashCode;
}
