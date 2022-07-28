//{{base_url}}/v1/billing/plans

import 'PayPref.dart';

class Plans {
  final String productId;
  final String name;
  final String description;
  final String status;
  final List billingCylces;
  final Map<String, dynamic> taxes;
  final PaymentPreferences payPref;

  Plans(this.productId, this.name, this.description, this.status,
      this.billingCylces, this.taxes, this.payPref);
}

/*
{
    "product_id": "{{product_id}}",
    "name": "Fresh Clean Tees Plan",
    "description": "Each shirt they send out to subscribers is designed with lots of attention to detail",
    "status": "ACTIVE",
    "billing_cycles": [
        {
            "frequency": {
                "interval_unit": "MONTH",
                "interval_count": 1
            },
            "tenure_type": "TRIAL",
            "sequence": 1,
            "total_cycles": 1,
            "pricing_scheme": {
                "fixed_price": {
                    "value": "1",
                    "currency_code": "USD"
                }
            }
        },
        {
            "frequency": {
                "interval_unit": "MONTH",
                "interval_count": 1
            },
            "tenure_type": "REGULAR",
            "sequence": 2,
            "total_cycles": 12,
            "pricing_scheme": {
                "fixed_price": {
                    "value": "44",
                    "currency_code": "USD"
                }
            }
        }
    ],
    "payment_preferences": {
        "auto_bill_outstanding": true,
        "setup_fee": {
            "value": "10",
            "currency_code": "USD"
        },
        "setup_fee_failure_action": "CONTINUE",
        "payment_failure_threshold": 3
    },
    "taxes": {
        "percentage": "10",
        "inclusive": false
    }
}



 */
