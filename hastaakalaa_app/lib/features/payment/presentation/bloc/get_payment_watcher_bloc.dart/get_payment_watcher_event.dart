part of 'get_payment_watcher_bloc.dart';

@freezed
class GetPaymentWatcherEvent with _$GetPaymentWatcherEvent {
  const factory GetPaymentWatcherEvent.retrievePaymentList() =
      _RetrievePaymentList;
}
