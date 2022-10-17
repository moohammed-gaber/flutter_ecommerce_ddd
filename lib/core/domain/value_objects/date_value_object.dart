import 'package:intl/intl.dart';

class Date {
  final DateTime input;
  late final String formattedDate;

  Date(this.input) {
    formattedDate = formatDate(input);
  }
  //24 December 2020
 String formatDate(DateTime input)=>DateFormat('dd MMMM yyyy').format(input);

}
