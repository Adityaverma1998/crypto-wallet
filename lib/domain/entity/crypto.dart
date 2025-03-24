class Crypto {
  final String pair;
  final double value;
  final double quantity;
  final DateTime timestamp;
  final double? previousValue;

  Crypto({
    required this.pair,
    required this.value,
    required this.quantity,
    required this.timestamp,
    this.previousValue,
  });
}
