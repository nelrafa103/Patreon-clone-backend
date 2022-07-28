import 'dart:convert';
import 'dart:developer';

import 'package:angel_framework/angel_framework.dart';
import 'package:angel_framework/http.dart';
import 'package:angel_mongo/services.dart';
import 'package:dotenv/dotenv.dart';
import 'package:http/http.dart' as https;
import 'package:mongo_dart/mongo_dart.dart';
//import 'package:mongo_dart/mongo_dart.dart';

main() async {
  //var Db();
  var app = Angel();
  //log('Hello world');
  //app.get('/', (req, res) => res.write('Hello, world!'));

  var http = AngelHttp(app);
  //app.get('/', (req, res) => {});
  https
      .post(Uri.parse("https://api-m.sandbox.paypal.com/v1/billing/plans"),
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
          },
          body: jsonEncode(<String, dynamic>{
            "": {
              "product_id": "{{product_id}}",
              "name": "Fresh Clean Tees Plan",
              "description":
                  "Each shirt they send out to subscribers is designed with lots of attention to detail",
              "status": "ACTIVE",
              "billing_cycles": [
                {
                  "frequency": {"interval_unit": "MONTH", "interval_count": 1},
                  "tenure_type": "TRIAL",
                  "sequence": 1,
                  "total_cycles": 1,
                  "pricing_scheme": {
                    "fixed_price": {"value": "1", "currency_code": "USD"}
                  }
                },
                {
                  "frequency": {"interval_unit": "MONTH", "interval_count": 1},
                  "tenure_type": "REGULAR",
                  "sequence": 2,
                  "total_cycles": 12,
                  "pricing_scheme": {
                    "fixed_price": {"value": "44", "currency_code": "USD"}
                  }
                }
              ],
              "payment_preferences": {
                "auto_bill_outstanding": true,
                "setup_fee": {"value": "10", "currency_code": "USD"},
                "setup_fee_failure_action": "CONTINUE",
                "payment_failure_threshold": 3
              },
              "taxes": {"percentage": "10", "inclusive": false}
            }
          }))
      .then((onValue) {
    log(onValue.body);
  }).catchError(() {
    log("There is a erron on the post");
  });
  await http.startServer('localhost', 3000);

  //var database = Db(env['MONGO_DATABASE']);

  /*await database.open();
  var service =
      app.use('/api/users', new MongoService(database.collection("users")));*/
}
