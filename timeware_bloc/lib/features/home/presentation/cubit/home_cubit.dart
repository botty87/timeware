import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/usecases/usecase.dart';
import '../../domain/entities/species.dart';
import '../../domain/usecases/get_species.dart';

part 'home_state.dart';
part 'home_cubit.freezed.dart';

@injectable
class HomeCubit extends Cubit<HomeState> {
  final GetSpecies _getSpecies;
  
  HomeCubit(this._getSpecies) : super(const HomeState());

  void getSpeciesList() async {
    emit(state.copyWith(isLoading: true));
    final result = await _getSpecies(const NoParams());
    emit(state.copyWith(isLoading: false));

    result.fold(
      (failure) => emit(state.copyWith(errorMessage: failure.message)),
      (species) => emit(state.copyWith(species: species)),
    );
  }

  
}
