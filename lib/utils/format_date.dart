// ignore_for_file: depend_on_referenced_packages

import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;

String formatDate(DateTime date) {
  return DateFormat("dd MMM, yyy").format(date);
}

String formDateFormat(DateTime date) {
  return DateFormat("yyy-MM-dd").format(date);
}
String timeAgo (DateTime date){
  return timeago.format(date);
}
String formatMonthYear(DateTime date) {
  return DateFormat("MMM yyy").format(date);
}

String formatDateHumans(DateTime date) {
  return DateFormat("EEEE, dd MMM yyy").format(date);
}

String getDateTime(DateTime date) {
  return DateFormat("hh:mm a").format(date);
}
