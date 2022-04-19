part of 'get_payment_watcher_bloc.dart';

@freezed
class GetPaymentWatcherState with _$GetPaymentWatcherState {
  const factory GetPaymentWatcherState.initial() = _Initial;
  const factory GetPaymentWatcherState.loading() = _Loading;
  const factory GetPaymentWatcherState.loaded(List<PaymentEntity> artList) =
      _Loaded;
  const factory GetPaymentWatcherState.failed(Failure failure) = _Failed;
}
