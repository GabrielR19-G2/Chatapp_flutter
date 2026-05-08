import 'package:chat/views/chat_page.dart';
import 'package:chat/views/loading_page.dart';
import 'package:chat/views/login_page.dart';
import 'package:chat/views/register_page.dart';
import 'package:chat/views/users_page.dart';
import 'package:flutter/widgets.dart';

final Map<String, Widget Function(BuildContext _)> appRoutes = {
  'users': (_) => UsersPage(),
  'chat': (_) => ChatPage(),
  'login': (_) => LoginPage(),
  'register': (_) => RegisterPage(),
  'loading': (_) => LoadingPage(),
};
