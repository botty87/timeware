import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../cubit/login/login_cubit.dart';

class LoginForm extends HookWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<LoginCubit>();
    final textEditingControllerName = useTextEditingController(text: cubit.state.email);
    final textEditingControllerPassword = useTextEditingController(text: cubit.state.password);

    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        TextField(
          controller: textEditingControllerName,
          decoration: const InputDecoration(labelText: 'Email'),
          onChanged: (value) => cubit.emailChanged(value),
          textInputAction: TextInputAction.next,
        ),
        TextField(
          controller: textEditingControllerPassword,
          decoration: const InputDecoration(labelText: 'Password'),
          obscureText: true,
          onChanged: (value) => cubit.passwordChanged(value),
          textInputAction: TextInputAction.done,
          onSubmitted: (_) => cubit.login(),
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
            onPressed: () => cubit.login(),
            child: const Text('Login'),
          ),
        ),
      ],
    );
  }
}