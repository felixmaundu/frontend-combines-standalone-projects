import 'package:flutter/material.dart';

import 'package:classycommerce/src/utils/config.dart';

import 'package:classycommerce/src/models/login_request_model.dart';
import 'package:classycommerce/src/models/register_request_model.dart';
import 'package:classycommerce/src//services/api_service.dart';
import 'package:snippet_coder_utils/FormHelper.dart';
import 'package:snippet_coder_utils/ProgressHUD.dart';
import 'package:snippet_coder_utils/hex_color.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool isApiCallProcess = false;
  bool hidePassword = true;
  static final GlobalKey<FormState> globalFormKey = GlobalKey<FormState>();
  String? userName;
  String? password;
  String? email;

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
            child: _registerUI(context),
          ),
          inAsyncCall: isApiCallProcess,
          opacity: 0.3,
          key: UniqueKey(),
        ),
      ),
    );
  }

  Widget _registerUI(BuildContext context) {
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
                bottomRight: Radius.circular(100),
                bottomLeft: Radius.circular(100),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    'logo here',
                  ),
                  // Image.asset(
                  //   "assets/images/ShoppingAppLogo.png",
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
              "Register",
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
              // icon:const Icon(Icons.person),
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
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: FormHelper.inputFieldWidget(
              context,
              // icon:const Icon(Icons.mail),
              "Email",
              "Email",
              (onValidateVal) {
                if (onValidateVal.isEmpty) {
                  return 'Email can\'t be empty.';
                }

                return null;
              },
              (onSavedVal) => {
                email = onSavedVal,
              },
              initialValue: "",
              borderFocusColor: Colors.white,
              prefixIconColor: Colors.white,
              borderColor: Colors.white,
              textColor: Colors.white,
              hintColor: Colors.white.withOpacity(0.7),
              borderRadius: 10,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Center(
            child: FormHelper.submitButton(
              "Register",
              () {
                if (validateAndSave()) {
                  setState(() {
                    isApiCallProcess = true;
                  });

                  RegisterRequestModel model = RegisterRequestModel(
                    username: userName,
                    password: password,
                    email: email,
                  );

                  APIService.register(model).then(
                    (response) {
                      setState(() {
                        isApiCallProcess = false;
                      });

                      if (response.data != null) {
                        FormHelper.showSimpleAlertDialog(
                          context,
                          Config.appName,
                          "Registration Successful. Please login to the account",
                          "OK",
                          () {
                            Navigator.pushNamedAndRemoveUntil(
                              context,
                              '/',
                              (route) => false,
                            );
                          },
                        );
                      } else {
                        FormHelper.showSimpleAlertDialog(
                          context,
                          Config.appName,
                          response.message,
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

//   final _formKey = GlobalKey<FormState>();
//   // String _email?;
//   // String _password?;
//   // String  _name?;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Sign Up"),
//       ),
//       body: SafeArea(
//         child: Form(
//           key: _formKey,
//           child: Center(
//             child: Column(
//               children: <Widget>[
//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: TextFormField(
//                       decoration: const InputDecoration(
//                           labelText: "name", border: OutlineInputBorder())
//                       //const InputDecoration(labelText: "Name"),
//                       // validator: (input) => input?.length! < 3 ? "Please enter a valid name" : null,
//                       // onSaved: (input) => _name = input!,
//                       ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: TextFormField(
//                       decoration: const InputDecoration(
//                           labelText: "email", border: OutlineInputBorder())
//                       //const InputDecoration(labelText: "Email"),
//                       // validator: (input) => !input.contains("@") ? "Please enter a valid email" : null,
//                       // onSaved: (input) => _email = input,
//                       ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: TextFormField(
//                     decoration: const InputDecoration(labelText: "country"),
//                     // validator: (input) => !input.contains("@") ? "Please enter a valid email" : null,
//                     // onSaved: (input) => _email = input,
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: TextFormField(
//                     decoration: const InputDecoration(labelText: "currency"),
//                     // validator: (input) => !input.contains("@") ? "Please enter a valid email" : null,
//                     // onSaved: (input) => _email = input,
//                   ),
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
//                   child: const Text("Sign Up"),
//                 ),
//                 TextButton(
//                   onPressed: () => Navigator.pop(context),
//                   child: const Text("Already have an account? Login"),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   void _submit() {
//     if (_formKey.currentState!.validate()) {
//       _formKey.currentState?.save();
//       // Perform signup with email, password and name
//     }
//   }
// }
