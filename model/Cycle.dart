class Cycle {
  final Map<String, dynamic> frequency;
  final String tenureType;
  final int sequence;
  final int totalCycle;
  final PricingSchme pricingSchme;

  Cycle(this.frequency, this.tenureType, this.sequence, this.totalCycle,
      this.pricingSchme);
}

class PricingSchme {
  final FixedSchme fixedSchme;

  PricingSchme(this.fixedSchme);
}

class FixedSchme {
  final String value;
  final String currencyCode;

  FixedSchme(this.value, this.currencyCode);
}
