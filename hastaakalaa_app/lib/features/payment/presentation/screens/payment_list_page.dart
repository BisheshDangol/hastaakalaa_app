import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hastaakalaa_app/core/wrapper/payment_wrapper.dart';
import 'package:hastaakalaa_app/features/payment/presentation/bloc/get_payment_watcher_bloc.dart/get_payment_watcher_bloc.dart';
import '../../../../injection_container.dart';

class PaymentListPage extends StatelessWidget {
  const PaymentListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<GetPaymentWatcherBloc>()
        ..add(GetPaymentWatcherEvent.retrievePaymentList()),
      child: Scaffold(
        appBar: AppBar(
          title: Text('My Payments'),
          centerTitle: true,
        ),
        backgroundColor: Color(0xFFEDF0F6),
        body: Container(
          margin: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              PageBuilder(),
            ],
          ),
        ),
      ),
    );
  }
}

class PageBuilder extends StatelessWidget {
  const PageBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetPaymentWatcherBloc, GetPaymentWatcherState>(
        builder: (context, state) {
      return state.map(
        initial: (_) {
          return Container();
        },
        loading: (_) => CircularProgressIndicator(),
        loaded: (e) {
          return Expanded(
            child: RefreshIndicator(
              onRefresh: () async {
                context.read<GetPaymentWatcherBloc>()
                  ..add(GetPaymentWatcherEvent.retrievePaymentList());
              },
              child: ListView(
                children: e.paymentList
                    .map((e) => PaymentWrapper(paymentEntity: e))
                    .toList(),
              ),
            ),
          );
        },
        failed: (e) {
          return Container();
        },
      );
    });
  }
}
