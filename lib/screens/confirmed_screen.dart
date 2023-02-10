import 'package:canteen_app/screens/confirmation_screen.dart';
import 'package:canteen_app/screens/order_screen.dart';
import 'package:canteen_app/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class ConfirmedScreen extends StatelessWidget {
  const ConfirmedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade200,
      appBar: AppBar(
        backgroundColor: Colors.blue.shade200,
        centerTitle: true,
        title: TextRegular(
            text: 'Confirmed Orders', fontSize: 25, color: Colors.black),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (context) => const ConfirmationScreen()));
          },
          icon: const Icon(Icons.navigate_before_rounded),
        ),
      ),
      body: SingleChildScrollView(
          child: Center(
              child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 25),
            child: Container(
              height: 150,
              width: 300,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25),
              ),
              child: Center(
                child: TextRegular(
                    text: 'Store Name', fontSize: 35, color: Colors.black),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 25),
            child: Container(
              height: 420,
              width: 350,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25),
              ),
              child: Center(
                child: Column(
                  children: [
                    TextRegular(
                        text: 'List of Orders',
                        fontSize: 35,
                        color: Colors.black),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: MaterialButton(
              minWidth: 150,
              height: 55,
              color: Colors.white,
              onPressed: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => const OrderScreen()));
              },
              child:
                  TextRegular(text: 'Menu', fontSize: 25, color: Colors.black),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
            ),
          ),
        ],
      ))),
    );
  }
}
