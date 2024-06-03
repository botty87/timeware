// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i6;
import 'package:timeware_bloc/features/species/presentation/pages/species_details_page.dart' as _i2;
import 'package:timeware_bloc/features/species/presentation/pages/species_page.dart' as _i3;
import 'package:timeware_bloc/features/user/presentation/pages/login_page.dart' as _i1;
import 'package:timeware_bloc/features/user/presentation/pages/user_details_page.dart' as _i4;

abstract class $AppRouter extends _i5.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    LoginRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.LoginPage(),
      );
    },
    SpeciesDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<SpeciesDetailsRouteArgs>();
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.SpeciesDetailsPage(
          key: args.key,
          taxonId: args.taxonId,
        ),
      );
    },
    SpeciesRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.SpeciesPage(),
      );
    },
    UserDetailsRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.UserDetailsPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.LoginPage]
class LoginRoute extends _i5.PageRouteInfo<void> {
  const LoginRoute({List<_i5.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i2.SpeciesDetailsPage]
class SpeciesDetailsRoute extends _i5.PageRouteInfo<SpeciesDetailsRouteArgs> {
  SpeciesDetailsRoute({
    _i6.Key? key,
    required int taxonId,
    List<_i5.PageRouteInfo>? children,
  }) : super(
          SpeciesDetailsRoute.name,
          args: SpeciesDetailsRouteArgs(
            key: key,
            taxonId: taxonId,
          ),
          initialChildren: children,
        );

  static const String name = 'SpeciesDetailsRoute';

  static const _i5.PageInfo<SpeciesDetailsRouteArgs> page =
      _i5.PageInfo<SpeciesDetailsRouteArgs>(name);
}

class SpeciesDetailsRouteArgs {
  const SpeciesDetailsRouteArgs({
    this.key,
    required this.taxonId,
  });

  final _i6.Key? key;

  final int taxonId;

  @override
  String toString() {
    return 'SpeciesDetailsRouteArgs{key: $key, taxonId: $taxonId}';
  }
}

/// generated route for
/// [_i3.SpeciesPage]
class SpeciesRoute extends _i5.PageRouteInfo<void> {
  const SpeciesRoute({List<_i5.PageRouteInfo>? children})
      : super(
          SpeciesRoute.name,
          initialChildren: children,
        );

  static const String name = 'SpeciesRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i4.UserDetailsPage]
class UserDetailsRoute extends _i5.PageRouteInfo<void> {
  const UserDetailsRoute({List<_i5.PageRouteInfo>? children})
      : super(
          UserDetailsRoute.name,
          initialChildren: children,
        );

  static const String name = 'UserDetailsRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}
