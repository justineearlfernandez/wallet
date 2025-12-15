import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/send_money_model.dart';
import '../models/transaction_model.dart';

abstract class SendMoneyRemoteDataSource {
  Future<void> sendMoney(SendMoneyModel number);
  Future<List<TransactionModel>> getTransactions();
}

class SendMoneyRemoteDataSourceImpl implements SendMoneyRemoteDataSource {
  final http.Client client;
  SendMoneyRemoteDataSourceImpl(this.client);

  @override
  Future<void> sendMoney(SendMoneyModel number) async {
    final response = await client.post(
      Uri.parse('https://jsonplaceholder.typicode.com/posts'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({'value': number.value}),
    );

    if (response.statusCode != 201) {
      throw Exception('Failed to send money');
    }
  }

  @override
  Future<List<TransactionModel>> getTransactions() async {
    final response = await client.get(
      Uri.parse('https://jsonplaceholder.typicode.com/posts'),
    );

    if (response.statusCode == 200) {
      final List data = jsonDecode(response.body);
      return data
          .map(
            (json) =>
                TransactionModel(id: json['id'], value: json['id'].toDouble()),
          ) // fake value
          .toList();
    } else {
      throw Exception('Failed to fetch transactions');
    }
  }
}
