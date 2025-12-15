import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:my_app/features/send_page/data/models/send_money_model.dart';

abstract class SendMoneyRemoteDataSource {
  Future<void> sendMoney(SendMoneyModel model);
}

class SendMoneyRemoteDataSourceImpl
    implements SendMoneyRemoteDataSource {
  static const _url =
      'https://jsonplaceholder.typicode.com/posts';

  final http.Client client;

  SendMoneyRemoteDataSourceImpl(this.client);

  @override
  Future<void> sendMoney(SendMoneyModel model) async {
    final response = await client.post(
      Uri.parse(_url),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(model.toJson()),
    );

    if (response.statusCode != 201) {
      throw Exception('Failed to send number');
    }
  }
}
