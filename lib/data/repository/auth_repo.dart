import 'package:shared_preferences/shared_preferences.dart';
import 'package:sisonke/data/datasource/remote/dio/dio_client.dart';

class AuthRepo{
  final DioClient dioClient;
  final SharedPreferences sharedPreferences;

  AuthRepo({required this.dioClient, required this.sharedPreferences});
}