import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/di/di.dart';
import '../cubit/species_details/species_details_cubit.dart';
import '../widgets/species_details_widget.dart';

@RoutePage()
class SpeciesDetailsPage extends StatelessWidget {
  final int _taxonId;

  const SpeciesDetailsPage({super.key, required int taxonId}) : _taxonId = taxonId;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SpeciesDetailsCubit>(
      create: (context) => getIt()..loadSpeciesDetails(_taxonId),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Species Details'),
        ),
        body: BlocBuilder<SpeciesDetailsCubit, SpeciesDetailsState>(
          buildWhen: (previous, current) => previous.runtimeType != current.runtimeType,
          builder: (context, state) {
            return switch (state) {
              SpeciesDetailsStateLoading _ => const Center(child: CircularProgressIndicator()),
              SpeciesDetailsStateLoaded(:final species) => SpeciesDetailsWidget(species),
              SpeciesDetailsStateError(:final message) => Center(child: Text(message)),
            };
          },
        ),
      ),
    );
  }
}
