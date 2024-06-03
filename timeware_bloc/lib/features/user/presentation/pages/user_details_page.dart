import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/user/user_cubit.dart';

@RoutePage()
class UserDetailsPage extends StatelessWidget {
  const UserDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final user = switch (context.read<UserCubit>().state) {
      UserStateLoggedIn(:final user) => user,
      _ => throw Exception('UserCubit state is not UserStateLoggedIn'),
    };

    return Scaffold(
      appBar: AppBar(title: Text(user.name)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Name: ${user.name}'),
            Text('Email: ${user.email}'),
            const SizedBox(height: 8),
            ElevatedButton(
              child: const Text('Logout'),
              onPressed: () => context.read<UserCubit>().logout(),
            ),
          ],
        ),
      ),
    );
  }
}
