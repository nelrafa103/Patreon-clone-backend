import 'package:angel_framework/angel_framework.dart';
import 'package:angel_framework/http.dart';

main() async {
    var app = Angel();
    var http = AngelHttp(app);
      app.get('/', (req, res) => {
        
      });
    await http.startServer('localhost', 3000);
}

