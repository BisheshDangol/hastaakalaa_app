import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hastaakalaa_app/features/art/domain/entities/art_entity.dart';
import 'package:hastaakalaa_app/features/payment/presentation/bloc/create_payment_form_bloc/create_payment_form_bloc.dart';
import 'package:hastaakalaa_app/injection_container.dart';
import 'package:khalti_flutter/khalti_flutter.dart';

class KhaltiPaymentPage extends StatefulWidget {
  final ArtEntity art;

  const KhaltiPaymentPage({Key? key, required this.art}) : super(key: key);

  @override
  State<KhaltiPaymentPage> createState() => _KhaltiPaymentPageState();
}

class _KhaltiPaymentPageState extends State<KhaltiPaymentPage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<CreatePaymentFormBloc>(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Khalti Payment Integration'),
        ),
        body: Container(
          padding: const EdgeInsets.all(15),
          child: ListView(
            children: [
              const SizedBox(height: 15),
              // For Amount
              Text('Payment Amount: ${widget.art.price}'),
              const SizedBox(
                height: 8,
              ),
              // For Button
              CreatePaymentButton(artEntity: widget.art)
            ],
          ),
        ),
      ),
    );
  }
}

class CreatePaymentButton extends StatelessWidget {
  final ArtEntity artEntity;
  CreatePaymentButton({Key? key, required this.artEntity}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: MediaQuery.of(context).size.width * 0.8,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(primary: Colors.green[200]),
        onPressed: () {
          KhaltiScope.of(context).pay(
            config: PaymentConfig(
              amount: artEntity.price,
              productIdentity: artEntity.id.toString(),
              productName: artEntity.title,
            ),
            preferences: [
              PaymentPreference.khalti,
            ],
            onSuccess: (su) {
              context
                  .read<CreatePaymentFormBloc>()
                  .add(CreatePaymentFormEvent.changedArtId(id: artEntity.id));
              context.read<CreatePaymentFormBloc>().add(
                  CreatePaymentFormEvent.changedPrice(price: artEntity.price));
              context.read<CreatePaymentFormBloc>().add(
                  CreatePaymentFormEvent.changedSellerId(
                      seller_id: artEntity.user));
              context
                  .read<CreatePaymentFormBloc>()
                  .add(CreatePaymentFormEvent.pressedCreate());
              const successsnackBar = SnackBar(
                content: Text('Payment Successful'),
              );
              ScaffoldMessenger.of(context).showSnackBar(successsnackBar);
            },
            onFailure: (fa) {
              const failedsnackBar = SnackBar(
                content: Text('Payment Failed'),
              );
              ScaffoldMessenger.of(context).showSnackBar(failedsnackBar);
            },
            onCancel: () {
              const cancelsnackBar = SnackBar(
                content: Text('Payment Cancelled'),
              );
              ScaffoldMessenger.of(context).showSnackBar(cancelsnackBar);
            },
          );
        },
        child: Text('Pay with Khalti', style: TextStyle(fontSize: 20)),
      ),
    );
  }
}
