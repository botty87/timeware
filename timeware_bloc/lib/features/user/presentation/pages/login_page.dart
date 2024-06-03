import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/di/di.dart';
import '../cubit/login/login_cubit.dart';
import '../cubit/user/user_cubit.dart';

@RoutePage()
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<LoginCubit>(
      create: (context) => getIt(),
      child: Scaffold(
          appBar: AppBar(
            title: const Text('Login'),
          ),
          body: BlocListener<LoginCubit, LoginState>(
            listener: (context, state) {
              if (state.loggedInUser != null) {
                context.read<UserCubit>().login(state.loggedInUser!);
              }
            },
            child: Builder(builder: (context) {
              return ListView(
                padding: const EdgeInsets.all(16),
                children: [
                  TextField(
                    decoration: const InputDecoration(labelText: 'Email'),
                    onChanged: (value) => context.read<LoginCubit>().emailChanged(value),
                  ),
                  TextField(
                    decoration: const InputDecoration(labelText: 'Password'),
                    obscureText: true,
                    onChanged: (value) => context.read<LoginCubit>().passwordChanged(value),
                  ),
                  const SizedBox(height: 16),
                  BlocSelector<LoginCubit, LoginState, String?>(
                    selector: (state) => state.error,
                    builder: (context, error) {
                      if (error == null) {
                        return const SizedBox.shrink();
                      }
                      return Text(error, style: const TextStyle(color: Colors.red));
                    },
                  ),
                  Center(
                    child: ElevatedButton(
                      onPressed: () => context.read<LoginCubit>().login(),
                      child: const Text('Login'),
                    ),
                  ),
                ],
              );
            }),
          )),
    );
  }
}
