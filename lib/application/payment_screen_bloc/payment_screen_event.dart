abstract class PaymentScreenEvent {}

class EmailChangeEvent extends PaymentScreenEvent {
  final String emailInput;
  EmailChangeEvent(this.emailInput);
}

class PhoneNoChangeEvent extends PaymentScreenEvent {
  final String phoneNo;
  PhoneNoChangeEvent(this.phoneNo);
}

class ExpiryDateChangeEvent extends PaymentScreenEvent {
  final String expiryDate;
  ExpiryDateChangeEvent(this.expiryDate);
}

class CardNoChangeEvent extends PaymentScreenEvent {
  final String cardNo;
  CardNoChangeEvent(this.cardNo);
}

class CvvNoChangeEvent {
  final String cvv;
  CvvNoChangeEvent(this.cvv);
}

class PayButtonPressedEvent extends PaymentScreenEvent {}
