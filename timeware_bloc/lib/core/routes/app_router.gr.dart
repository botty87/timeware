// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i6;
import 'package:flutter/material.dart' as _i7;
import 'package:timeware_bloc/core/loading_page.dart' as _i1;
import 'package:timeware_bloc/features/species/presentation/pages/species_details_page.dart'
    as _i3;
import 'package:timeware_bloc/features/species/presentation/pages/species_page.dart'
    as _i4;
import 'package:timeware_bloc/features/user/presentation/pages/login_page.dart'
    as _i2;
import 'package:timeware_bloc/features/user/presentation/pages/user_details_page.dart'
    as _i5;

abstract class $AppRouter extends _i6.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    LoadingRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.LoadingPage(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.LoginPage(),
      );
    },
    SpeciesDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<SpeciesDetailsRouteArgs>();
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i3.SpeciesDetailsPage(
          key: args.key,
          taxonId: args.taxonId,
        ),
      );
    },
    SpeciesRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.SpeciesPage(),
      );
    },
    UserDetailsRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.UserDetailsPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.LoadingPage]
class LoadingRoute extends _i6.PageRouteInfo<void> {
  const LoadingRoute({List<_i6.PageRouteInfo>? children})
      : super(
          LoadingRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoadingRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i2.LoginPage]
class LoginRoute extends _i6.PageRouteInfo<void> {
  const LoginRoute({List<_i6.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i3.SpeciesDetailsPage]
class SpeciesDetailsRoute extends _i6.PageRouteInfo<SpeciesDetailsRouteArgs> {
  SpeciesDetailsRoute({
    _i7.Key? key,
    required int taxonId,
    List<_i6.PageRouteInfo>? children,
  }) : super(
          SpeciesDetailsRoute.name,
          args: SpeciesDetailsRouteArgs(
            key: key,
            taxonId: taxonId,
          ),
          initialChildren: children,
        );

  static const String name = 'SpeciesDetailsRoute';

  static const _i6.PageInfo<SpeciesDetailsRouteArgs> page =
      _i6.PageInfo<SpeciesDetailsRouteArgs>(name);
}

class SpeciesDetailsRouteArgs {
  const SpeciesDetailsRouteArgs({
    this.key,
    required this.taxonId,
  });

  final _i7.Key? key;

  final int taxonId;

  @override
  String toString() {
    return 'SpeciesDetailsRouteArgs{key: $key, taxonId: $taxonId}';
  }
}

/// generated route for
/// [_i4.SpeciesPage]
class SpeciesRoute extends _i6.PageRouteInfo<void> {
  const SpeciesRoute({List<_i6.PageRouteInfo>? children})
      : super(
          SpeciesRoute.name,
          initialChildren: children,
        );

  static const String name = 'SpeciesRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i5.UserDetailsPage]
class UserDetailsRoute extends _i6.PageRouteInfo<void> {
  const UserDetailsRoute({List<_i6.PageRouteInfo>? children})
      : super(
          UserDetailsRoute.name,
          initialChildren: children,
        );

  static const String name = 'UserDetailsRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}
