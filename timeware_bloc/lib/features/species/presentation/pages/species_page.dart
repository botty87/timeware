import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/di/di.dart';
import '../cubit/species/species_cubit.dart';
import '../widgets/species_list.dart';

@RoutePage()
class SpeciesPage extends StatelessWidget {
  const SpeciesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SpeciesCubit>(
      create: (context) => getIt()..getSpeciesList(),
      child: BlocListener<SpeciesCubit, SpeciesState>(
        listener: (context, state) {
          if (state.errorMessage != null) {
            ScaffoldMessenger.of(context)
                .showSnackBar(SnackBar(content: Text(state.errorMessage!)));
          }
        },
        child: Scaffold(
          appBar: AppBar(title: const Text('Vulnerable Species')),
          body: const SpeciesList(),
        ),
      ),
    );
  }
}
