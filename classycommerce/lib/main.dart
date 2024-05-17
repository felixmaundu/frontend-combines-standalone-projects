import 'package:classycommerce/src/screens/i_screens/MainPage.dart';
import 'package:classycommerce/src/screens/i_screens/logInPage.dart';
import 'package:classycommerce/src/screens/i_screens/signUpPage.dart';
import 'package:flutter/material.dart';

// import 'pages/home_page.dart';
// import 'pages/login_page.dart';
// import 'pages/register_page.dart';
//add proj7,8,11,22
import 'package:classycommerce/src/services/shared_service.dart';

Widget _defaultHome = LoginPage();
void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Get result of the login function.
  bool _result = await SharedService.isLoggedIn();
  if (_result) {
    _defaultHome = MainPage();
  }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: const LoginPage(),
      routes: {
        '/': (context) => _defaultHome,
        '/main': (context) => MainPage(),
        '/login': (context) => LoginPage(),
        '/register': (context) => SignUpPage(),
      },
    );
  }
}

//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       // home: LoginPage() //MyHomePage(title: 'Flutter Demo Home Page'),
//       routes: {
//         '/': (context) => _defaultHome,
//         '/main': (context) =>  MainPage(),
//         '/login': (context) =>  LoginPage(),
//         '/register': (context) =>  SignUpPage(),

//         // '/': (context) => LoginPage(),
//         // '/register': (context) => SignUpPage(),
//       },
//     );
//   }
//}
