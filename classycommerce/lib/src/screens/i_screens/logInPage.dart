import 'package:classycommerce/src/screens/i_screens/SignUpPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:snippet_coder_utils/FormHelper.dart';
import 'package:snippet_coder_utils/ProgressHUD.dart';
import 'package:snippet_coder_utils/hex_color.dart';
import 'package:classycommerce/src/services/api_service.dart';
import 'package:classycommerce/src/utils/config.dart';
import 'package:classycommerce/src/models/login_request_model.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isApiCallProcess = false;
  bool hidePassword = true;
  GlobalKey<FormState> globalFormKey = GlobalKey<FormState>();
  String? userName;
  String? password;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: HexColor("#283B71"),
        body: ProgressHUD(
          child: Form(
            key: globalFormKey,
            child: _loginUI(context),
          ),
          inAsyncCall: isApiCallProcess,
          opacity: 0.3,
          key: UniqueKey(),
        ),
      ),
    );
  }

  Widget _loginUI(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 5.2,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.white,
                  Colors.white,
                ],
              ),
              borderRadius: BorderRadius.only(
                //topLeft: Radius.circular(100),
                //topRight: Radius.circular(150),
                bottomRight: Radius.circular(100),
                bottomLeft: Radius.circular(100),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // Padding(
                //   padding: const EdgeInsets.only(top: 20),
                //   child: Center(
                //     child: Text(
                //       "Shopping App",
                //       style: TextStyle(
                //         fontWeight: FontWeight.bold,
                //         fontSize: 40,
                //         color: HexColor("#283B71"),
                //       ),
                //     ),
                //   ),
                //),
                const Align(
                  alignment: Alignment.center,
                  child: Text(
                    'logo here',
                  ),
                  // Image.asset(
                  //   "", //assets/images/ShoppingAppLogo.png
                  //   fit: BoxFit.contain,
                  //   width: 250,
                  // ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20, bottom: 30, top: 50),
            child: Text(
              "Login",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: FormHelper.inputFieldWidget(
              context,
              //  icon: const Icon(Icons.person),
              "Username",
              "Username",
              (onValidateVal) {
                if (onValidateVal.isEmpty) {
                  return 'Username can\'t be empty.';
                }

                return null;
              },
              (onSavedVal) => {
                userName = onSavedVal,
              },
              initialValue: "",
              obscureText: false,
              borderFocusColor: Colors.white,
              prefixIconColor: Colors.white,
              borderColor: Colors.white,
              textColor: Colors.white,
              hintColor: Colors.white.withOpacity(0.7),
              borderRadius: 10,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: FormHelper.inputFieldWidget(
              context,
              // icon:const Icon(Icons.lock),
              "Password",
              "Password",
              (onValidateVal) {
                if (onValidateVal.isEmpty) {
                  return 'Password can\'t be empty.';
                }

                return null;
              },
              (onSavedVal) => {
                password = onSavedVal,
              },
              initialValue: "",
              obscureText: hidePassword,
              borderFocusColor: Colors.white,
              prefixIconColor: Colors.white,
              borderColor: Colors.white,
              textColor: Colors.white,
              hintColor: Colors.white.withOpacity(0.7),
              borderRadius: 10,
              suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    hidePassword = !hidePassword;
                  });
                },
                color: Colors.white.withOpacity(0.7),
                icon: Icon(
                  hidePassword ? Icons.visibility_off : Icons.visibility,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: const EdgeInsets.only(
                right: 25,
              ),
              child: RichText(
                text: TextSpan(
                  style: const TextStyle(color: Colors.grey, fontSize: 14.0),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Forget Password ?',
                      style: const TextStyle(
                        color: Colors.white,
                        decoration: TextDecoration.underline,
                      ),
                      recognizer: TapGestureRecognizer()..onTap = () {},
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Center(
            child: FormHelper.submitButton(
              "Login",
              () {
                if (validateAndSave()) {
                  setState(() {
                    isApiCallProcess = true;
                  });

                  LoginRequestModel model = LoginRequestModel(
                    username: userName,
                    password: password,
                  );

                  APIService.login(model).then(
                    (response) {
                      setState(() {
                        isApiCallProcess = false;
                      });

                      if (response) {
                        Navigator.pushNamedAndRemoveUntil(
                          context,
                          '/main',
                          (route) => false,
                        );
                      } else {
                        FormHelper.showSimpleAlertDialog(
                          context,
                          Config.appName,
                          "Invalid Username/Password !!",
                          "OK",
                          () {
                            Navigator.of(context).pop();
                          },
                        );
                      }
                    },
                  );
                }
              },
              btnColor: HexColor("283B71"),
              borderColor: Colors.white,
              txtColor: Colors.white,
              borderRadius: 10,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Center(
            child: Text(
              "OR",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.only(
                right: 25,
              ),
              child: RichText(
                text: TextSpan(
                  style: const TextStyle(color: Colors.white, fontSize: 14.0),
                  children: <TextSpan>[
                    const TextSpan(
                      text: 'Dont have an account? ',
                    ),
                    TextSpan(
                      text: 'Sign up',
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.pushNamed(
                            context,
                            '/register',
                          );
                        },
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }

  bool validateAndSave() {
    final form = globalFormKey.currentState;
    if (form!.validate()) {
      form.save();
      return true;
    }
    return false;
  }
}

//   bool isApiCallProcess = false;
//   bool hidePassword = true;
//   GlobalKey<FormState> globalFormKey = GlobalKey<FormState>();
//   String? userName;
//   String? password;


//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // appBar: AppBar(
//       //   title: const Text("Login"),
//       // ),
//       //making the form scrollable to avoid overlapsing
//       //add google auth
//       // declaring variable
//       body: Form(
//         key: globalFormKey,
//         child: SafeArea(
//           child: Center(
//             child: Column(
//               children: <Widget>[
//                 const Padding(
//                   padding: EdgeInsets.all(8.0),
//                   child: Text(
//                     'Log In',
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: TextFormField(
//                       decoration: const InputDecoration(
//                           labelText: "email", border: OutlineInputBorder())
//                       // const InputDecoration(labelText: "Email"),
//                       // validator: (input) => !input.contains("@") ? "Please enter a valid email" : null,
//                       // onSaved: (input) => _email = input,
//                       ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: TextFormField(
//                     decoration: const InputDecoration(
//                         labelText: "password", border: OutlineInputBorder()),
//                     //const InputDecoration(labelText: "Password"),
//                     // validator: (input) => input.length < 6 ? "Your password needs to be at least 6 characters" : null,
//                     // onSaved: (input) => _password = input,
//                     obscureText: true,
//                   ),
//                 ),
//                 ElevatedButton(
//                   onPressed: _submit,
//                   child: const Text("Login"),
//                 ),
//                 TextButton(
//                   onPressed: () => Navigator.push(context,
//                       MaterialPageRoute(builder: (context) => SignUpPage())),
//                   child: const Text("Don't have an account? Sign up"),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   void _submit() {
//     if (globalFormKey.currentState!.validate()) {
//       globalFormKey.currentState?.save();
//       // Perform login with email and password
//     }
//   }
// }
