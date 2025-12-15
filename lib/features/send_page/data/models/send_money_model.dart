import 'package:my_app/features/send_page/domain/entities/send_money.dart';

class SendMoneyModel extends SendNumber {
  SendMoneyModel(super.value);

  Map<String, dynamic> toJson() => {
        'number': value,
        'title': 'Send number',
        'userId': 1,
      };
}
