import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/di/di.dart';
import '../cubit/login/login_cubit.dart';
import '../cubit/user/user_cubit.dart';
import '../widgets/login_form.dart';

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
            child: const LoginForm(),
          )),
    );
  }
}
