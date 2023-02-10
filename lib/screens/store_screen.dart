import 'package:canteen_app/screens/menu_data_screen.dart';
import 'package:canteen_app/screens/order_list_screen.dart';
import 'package:canteen_app/screens/signup_screen.dart';
import 'package:canteen_app/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade200,
      appBar: AppBar(
          centerTitle: true,
          title: TextRegular(
              text: "Store's Profile", fontSize: 25, color: Colors.black),
          backgroundColor: Colors.blue.shade200,
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => SignupScreen()));
            },
            icon: const Icon(Icons.navigate_before_rounded),
          )),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 55),
                child: Container(
                  height: 200,
                  width: 350,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      image: const DecorationImage(
                        image: AssetImage('assets/images/store.png'),
                        fit: BoxFit.fitHeight,
                      ),
                      borderRadius: BorderRadius.circular(25)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 100),
                child: MaterialButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  color: Colors.white,
                  height: 115,
                  minWidth: 350,
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const MenuDataScreen()));
                  },
                  child: TextRegular(
                      text: 'Upload Menu Data',
                      fontSize: 30,
                      color: Colors.black),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: MaterialButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  color: Colors.white,
                  height: 115,
                  minWidth: 350,
                  onPressed: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => const OrderListScreen()));
                  },
                  child: TextRegular(
                      text: 'Receive Order', fontSize: 30, color: Colors.black),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
