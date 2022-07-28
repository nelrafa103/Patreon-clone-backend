import 'package:angel_framework/angel_framework.dart';
import 'package:angel_framework/http.dart';
import 'package:angel_mongo/services.dart';
import 'package:dotenv/dotenv.dart';
import 'package:mongo_dart/mongo_dart.dart';
//import 'package:mongo_dart/mongo_dart.dart';

main() async {
  //var Db();
  var app = Angel();
  var http = AngelHttp(app);
  app.get('/', (req, res) => {});
  await http.startServer('localhost', 3000);

  
  var database= Db(env['MONGO_DATABASE']);
  await database.open();
  var service = app.use('/api/users',new MongoService(database.collection("users")));


}
