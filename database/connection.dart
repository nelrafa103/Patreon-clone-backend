import 'package:angel_model/angel_model.dart';
import 'package:angel_mongo/services.dart';
import 'package:dotenv/dotenv.dart';
import 'package:mongo_dart/mongo_dart.dart';

abstract class _Greeting extends Model {
  String get text;

  double get attachedMoney;
}


//var service = new MongoService();
/*var mappedService = service.map(GreetingSerializer.fromMap, GreetingSerializer.toMap);

// Now you can get Greeting instances.
var greeting = await mappedService.read(id);
print([greeting.text, greeting.attachedMoney]);*/
