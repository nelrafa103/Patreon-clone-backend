import 'package:angel_model/angel_model.dart';

class User extends Model {
  final String name;
  final String email;
  final String password;

  User(this.name, this.email, this.password);
}
