class OfferSubtitle {
  final String subtitle;

  OfferSubtitle(this.subtitle);
  String get lastLetter {
    return subtitle.substring(subtitle.length - 1);
  }

  String get beforeLastLetter {
    return subtitle.substring(subtitle.length - 2, subtitle.length - 1);
  }
  String get beforeLast2Letter {
    return subtitle.substring(subtitle.length - 3, subtitle.length - 2);
  }

  String get firstLetters {
    return subtitle.substring(0, subtitle.length - 3);
  }
}
