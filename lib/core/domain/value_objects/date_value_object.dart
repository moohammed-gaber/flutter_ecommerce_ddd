import 'package:intl/intl.dart';

class Date {
  final DateTime input;
  late final formattedDate;

  Date(this.input) {
    formattedDate = DateFormat('dd-MM-yyyy').format(input);
  }
}
