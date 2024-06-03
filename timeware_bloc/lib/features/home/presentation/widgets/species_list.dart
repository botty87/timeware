import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/home_cubit.dart';

class SpeciesList extends StatelessWidget {
  const SpeciesList({super.key});

  @override
  Widget build(BuildContext context) {
    final speciesList = context.select((HomeCubit cubit) => cubit.state.species);

    if (speciesList.isEmpty) {
      return const Center(child: CircularProgressIndicator());
    }

    return ListView.builder(
      padding: const EdgeInsets.all(8),
      itemCount: speciesList.length,
      itemBuilder: (context, index) {
        final species = speciesList[index];
        return ListTile(
          key: ValueKey(species.taxonId),
          title: Text(species.scientificName!),
          subtitle:
              Text('Subspecies: ${species.subspecies ?? 'N/A'}, Rank: ${species.rank ?? 'N/A'}'),
        );
      },
    );
  }
}
