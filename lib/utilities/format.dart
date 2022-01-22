import 'package:intl/intl.dart';

class Format {
  static final currency = NumberFormat.currency(locale: "en_US", symbol: "\$");
  static final compactCurrency =
      NumberFormat.compactCurrency(locale: "en_US", symbol: "\$");
}
