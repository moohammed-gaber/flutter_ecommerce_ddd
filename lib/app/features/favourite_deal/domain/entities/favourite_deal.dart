import 'package:untitled/app/features/grocery/domain/entities/deal.dart';

class FavouriteDeal {
  final Deal deal;
  final bool isFavourite;

  FavouriteDeal({required this.deal, this.isFavourite = false});

  // from map
  factory FavouriteDeal.fromMap(Map<String, dynamic> map) {
    return FavouriteDeal(
      deal: Deal.fromMap(map),
      isFavourite: map['is_favourite'] as bool,
    );
  }

  // copy with
  FavouriteDeal copyWith({Deal? deal, bool? isFavourite}) {
    return FavouriteDeal(
      deal: deal ?? this.deal,
      isFavourite: isFavourite ?? this.isFavourite,
    );
  }

  // toggle favourite
  FavouriteDeal toggleFavourite() {
    return copyWith(isFavourite: !isFavourite);
  }
}
