import 'package:bloc/bloc.dart';

import 'package:jesse_app/application/payment_screen_bloc/payment_screen_event.dart';
import 'package:jesse_app/application/payment_screen_state.dart';

class PaymentScreenBloc extends Bloc<PaymentScreenEvent, PaymentScreenState> {
  PaymentScreenBloc()
      : super(PaymentScreenState(
          email: '',
          phoneNo: '',
          cardNo: '',
          expiryDate: '',
          cvvNumber: '',
        ));

  @override
  Stream<PaymentScreenState> mapEventToState(PaymentScreenEvent event) async* {
    if (event is EmailChangeEvent) {
    } else if (event is PhoneNoChangeEvent) {
    } else if (event is CardNoChangeEvent) {
    } else if (event is CvvNoChangeEvent) {
    } else if (event is ExpiryDateChangeEvent) {}
  }
}
