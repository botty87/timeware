import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'core/di/di.dart';
import 'core/routes/app_router.dart';
import 'core/routes/app_router.gr.dart';
import 'features/user/presentation/cubit/user/user_cubit.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  /* if (!kIsWeb) {
    FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  } */
  await configureDependencies();
  Bloc.observer = getIt();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider<UserCubit>(
      create: (context) => getIt()..readUser(),
      child: MaterialApp.router(
          title: 'Timeware',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          routerConfig: getIt<AppRouter>().config(),
          builder: (context, child) {
            return BlocListener<UserCubit, UserState>(
              listenWhen: (previous, current) {
                return previous != current;
              },
              listener: (context, state) {
                final router = getIt<AppRouter>();
                switch (state) {
                  case UserStateLoggedOut():
                    router.replace(const LoginRoute());
                  case UserStateLoggedIn():
                    router.replace(const HomeRoute());
                  default:
                }
              },
              child: child!,
            );
          }),
    );
  }
}
