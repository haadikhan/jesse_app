class PaymentScreenState {
  final String email;
  final String phoneNo;
  final String cardNo;
  final String expiryDate;
  final String cvvNumber;
  PaymentScreenState(
      {required this.email,
      required this.phoneNo,
      required this.cardNo,
      required this.expiryDate,
      required this.cvvNumber});
}
