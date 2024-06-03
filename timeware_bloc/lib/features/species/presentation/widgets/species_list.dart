import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/routes/app_router.gr.dart';
import '../../domain/entities/species/species.dart';
import '../cubit/species/species_cubit.dart';
import 'species_list_search_widget.dart';

class SpeciesList extends StatelessWidget {
  const SpeciesList({super.key});

  @override
  Widget build(BuildContext context) {
    final isLoading = context.select((SpeciesCubit cubit) => cubit.state.isLoading);

    if (isLoading) {
      return const Center(child: CircularProgressIndicator());
    }

    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: SpeciesListSearchWidget(),
        ),
        const SizedBox(height: 8),
        Expanded(
          child: BlocSelector<SpeciesCubit, SpeciesState, List<Species>>(
            selector: (state) => state.species,
            builder: (context, speciesList) {
              if (speciesList.isEmpty) {
                return const Center(child: Text('No species found'));
              }

              return ListView.builder(
                padding: const EdgeInsets.all(8),
                itemCount: speciesList.length,
                itemBuilder: (context, index) {
                  final species = speciesList[index];
                  return ListTile(
                    key: ValueKey(species.taxonId),
                    title: Text(species.scientificName!),
                    subtitle: Text(
                        'Subspecies: ${species.subspecies ?? 'N/A'}, Rank: ${species.rank ?? 'N/A'}'),
                    onTap: () => context.pushRoute(SpeciesDetailsRoute(taxonId: species.taxonId!)),
                  );
                },
              );
            },
          ),
        ),
      ],
    );
  }
}
