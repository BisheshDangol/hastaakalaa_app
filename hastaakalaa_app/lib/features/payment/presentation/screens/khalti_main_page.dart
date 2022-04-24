import 'package:flutter/material.dart';
import 'package:hastaakalaa_app/features/art/domain/entities/art_entity.dart';
import 'package:khalti_flutter/khalti_flutter.dart';
import 'khalti_payment_page.dart';

class KhaltiMainPage extends StatelessWidget {
  final ArtEntity artEntity;
  const KhaltiMainPage({Key? key, required this.artEntity}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return KhaltiScope(
        publicKey: "test_public_key_f9f82f7ceb6b4f929b727ee5c83fb63b",
        builder: (context, navigatorKey) {
          return KhaltiPaymentPage(art: artEntity);
        });
  }
}
