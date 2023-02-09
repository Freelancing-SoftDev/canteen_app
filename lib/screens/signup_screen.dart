import 'package:canteen_app/screens/order_screen.dart';
import 'package:canteen_app/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

class SignupScreen extends StatelessWidget {
  SignupScreen({Key? key}) : super(key: key);

  final box = GetStorage();
  late String email;
  late String password;
  late String confirm_password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade200,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Container(
                  height: 300,
                  width: 350,
                  decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage('assets/images/food.png'),
                        fit: BoxFit.fitHeight,
                      ),
                      borderRadius: BorderRadius.circular(25)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: TextRegular(
                    text: 'Welcome !', fontSize: 65, color: Colors.black),
              ),
              TextRegular(
                  text: 'Sign-up to use Space-Go',
                  fontSize: 20,
                  color: Colors.black),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 5),
                child: TextFormField(
                  onChanged: (String input) {
                    email = input;
                  },
                  decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.email),
                      fillColor: Colors.white,
                      filled: true,
                      label: TextRegular(
                          text: 'Email', fontSize: 15, color: Colors.black),
                      border: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(10))),
                  keyboardType: TextInputType.emailAddress,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 5),
                child: TextFormField(
                  onChanged: (String input) {
                    password = input;
                  },
                  obscureText: true,
                  decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.password),
                      fillColor: Colors.white,
                      filled: true,
                      label: TextRegular(
                          text: 'Password', fontSize: 15, color: Colors.black),
                      border: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(10))),
                  textCapitalization: TextCapitalization.words,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 5),
                child: TextFormField(
                  onChanged: (String input) {
                    confirm_password = input;
                  },
                  obscureText: true,
                  decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.password),
                      fillColor: Colors.white,
                      filled: true,
                      label: TextRegular(
                          text: 'Confirm Password',
                          fontSize: 15,
                          color: Colors.black),
                      border: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(10))),
                  textCapitalization: TextCapitalization.words,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 45),
                child: MaterialButton(
                    color: Colors.blue.shade900,
                    minWidth: 350,
                    height: 45,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    onPressed: () {
                      // box.write('myEmail', email);
                      // box.write('myPassword', password);
                      // box.write('myFinalPassword', confirm_password);
                      // if (password == confirm_password) {
                      //   box.write('myFinalPassword', confirm_password);
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const OrderScreen()));
                      // } else {
                      //   showDialog(
                      //       barrierDismissible: false,
                      //       context: context,
                      //       builder: (context) {
                      //         return AlertDialog(
                      //           title: TextRegular(
                      //               text: "Password Don't Match",
                      //               fontSize: 22,
                      //               color: Colors.black),
                      //           actions: [
                      //             TextButton(
                      //                 onPressed: () {
                      //                   Navigator.of(context).pop();
                      //                 },
                      //                 child: TextRegular(
                      //                     text: 'Try Again',
                      //                     fontSize: 15,
                      //                     color: Colors.black)),
                      //           ],
                      //         );
                      //       });
                      // }
                    },
                    child: TextRegular(
                        text: 'Sign-up', fontSize: 22, color: Colors.white)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
