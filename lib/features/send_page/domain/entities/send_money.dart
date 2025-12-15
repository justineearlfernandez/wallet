class SendNumber {
  final num value;
  final DateTime date;
  final String action;

  SendNumber(this.value, {DateTime? date, this.action = 'Sent'})
    : date = date ?? DateTime.now();
}

class Transaction {
  final int id;
  final num value;
  final DateTime? date;
  final String? action;

  Transaction({required this.id, required this.value, this.date, this.action});
}
