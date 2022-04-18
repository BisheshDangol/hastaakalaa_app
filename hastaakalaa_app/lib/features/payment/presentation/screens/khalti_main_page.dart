import 'package:flutter/material.dart';
import 'package:khalti_flutter/khalti_flutter.dart';
import 'khalti_payment_page.dart';

class KhaltiMainPage extends StatelessWidget {
  const KhaltiMainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return KhaltiScope(
        publicKey: "test_public_key_0ccda59ea4a34f55a439f55db7b463da",
        builder: (context, navigatorKey) {
          return KhaltiPaymentPage();
        });
  }
}
