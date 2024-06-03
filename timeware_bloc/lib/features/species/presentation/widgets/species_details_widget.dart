import 'package:flutter/material.dart';

import '../../domain/entities/species_details/species_details.dart';

class SpeciesDetailsWidget extends StatelessWidget {
  final SpeciesDetails _speciesDetails;

  const SpeciesDetailsWidget(this._speciesDetails, {super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(8),
      children: [
        _buildRow('Scientific Name', _speciesDetails.scientificName),
        _buildRow('Kingdom', _speciesDetails.kingdom),
        _buildRow('Phylum', _speciesDetails.phylum),
        _buildRow('Class', _speciesDetails.resultClass),
        _buildRow('Order', _speciesDetails.order),
        _buildRow('Family', _speciesDetails.family),
        _buildRow('Genus', _speciesDetails.genus),
        _buildRow('Main Common Name', _speciesDetails.mainCommonName),
        _buildRow('Population Trend', _speciesDetails.populationTrend),
        _buildRow('Assessor', _speciesDetails.assessor),
        _buildRow('Published Year', _speciesDetails.publishedYear?.toString()),
        _buildRow('Amended Reason', _speciesDetails.amendedReason),
      ],
    );
  }

  Widget _buildRow(String title, String? text) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        Text(text ?? 'N/A'),
        const SizedBox(height: 8),
      ],
    );
  }
}
