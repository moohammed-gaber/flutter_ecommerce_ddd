import 'package:untitled/app/features/favourite_deal/domain/entities/favourite_deal.dart';

class FavouriteState {
  final List<FavouriteDeal> deals;

  FavouriteState({required this.deals});

  // initital
  factory FavouriteState.initial() => FavouriteState(deals: []);

  // copy with
  FavouriteState copyWith({List<FavouriteDeal>? deals}) {
    return FavouriteState(deals: deals ?? this.deals);
  }
}
