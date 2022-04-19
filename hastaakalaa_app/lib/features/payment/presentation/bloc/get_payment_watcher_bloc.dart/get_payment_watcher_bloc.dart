import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hastaakalaa_app/core/errors/failures.dart';
import 'package:hastaakalaa_app/core/usecase.dart';
import 'package:hastaakalaa_app/features/payment/domain/entites/payment_entity.dart';
import 'package:hastaakalaa_app/features/payment/domain/usecases/get_payment_list_usecase.dart';
import 'package:meta/meta.dart';

part 'get_payment_watcher_event.dart';
part 'get_payment_watcher_state.dart';
part 'get_payment_watcher_bloc.freezed.dart';

class GetPaymentWatcherBloc
    extends Bloc<GetPaymentWatcherEvent, GetPaymentWatcherState> {
  final GetPaymentListUsecase _getPaymentListUsecase;
  GetPaymentWatcherBloc(this._getPaymentListUsecase)
      : super(GetPaymentWatcherState.initial()) {
    on<GetPaymentWatcherEvent>((event, emit) async {
      await event.map(retrievePaymentList: (_) async {
        emit(GetPaymentWatcherState.loading());

        final paymentList = await _getPaymentListUsecase.call(NoParams());

        paymentList.fold((l) => emit(GetPaymentWatcherState.failed(l)),
            (r) => emit(GetPaymentWatcherState.loaded(r)));
      });
    });
  }
}
