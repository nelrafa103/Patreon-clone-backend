class PaymentPreferences {
  final bool autoBill;
  final Map<String, String> setupFee;
  final String setUpFeeFailure;
  final int paymentFailure;

  PaymentPreferences(
      this.autoBill, this.setupFee, this.setUpFeeFailure, this.paymentFailure);
}
