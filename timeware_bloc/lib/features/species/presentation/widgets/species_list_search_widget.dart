
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../cubit/species/species_cubit.dart';

class SpeciesListSearchWidget extends HookWidget {
  const SpeciesListSearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<SpeciesCubit>();

    final textEditingControllerQuery = useTextEditingController(text: cubit.state.searchQuery);

    return TextField(
      controller: textEditingControllerQuery,
      onChanged: (query) => cubit.onSearchQueryChanged(query),
      decoration: const InputDecoration(
        hintText: 'Search by scientific name',
        prefixIcon: Icon(Icons.search),
      ),
    );
  }
}