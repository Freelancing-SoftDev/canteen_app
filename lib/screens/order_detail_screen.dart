import 'package:canteen_app/screens/confirmation_screen.dart';
import 'package:canteen_app/screens/order_screen.dart';
import 'package:canteen_app/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

class OrderDetailsScreen extends StatelessWidget {
  OrderDetailsScreen({Key? key}) : super(key: key);

  final box = GetStorage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade200,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue.shade200,
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => const OrderScreen()));
            },
            icon: const Icon(Icons.navigate_before_rounded)),
        title: TextRegular(
            text: 'Order Details', fontSize: 25, color: Colors.black),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          image: const DecorationImage(
                            image: AssetImage('assets/images/male.png'),
                            fit: BoxFit.fitHeight,
                          ),
                          borderRadius: BorderRadius.circular(25)),
                    ),
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 25),
                        child: TextRegular(
                            text: 'Store 1', fontSize: 20, color: Colors.black),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 25),
                        child: TextRegular(
                            text: 'Price: ', fontSize: 20, color: Colors.black),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: SizedBox(
                      height: 45,
                      width: 100,
                      child: TextRegular(
                          text: 'Quantity: ' + box.read('val1'),
                          fontSize: 20,
                          color: Colors.black),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          image: const DecorationImage(
                            image: AssetImage('assets/images/male.png'),
                            fit: BoxFit.fitHeight,
                          ),
                          borderRadius: BorderRadius.circular(25)),
                    ),
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 25),
                        child: TextRegular(
                            text: 'Store 2', fontSize: 20, color: Colors.black),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 25),
                        child: TextRegular(
                            text: 'Price: ', fontSize: 20, color: Colors.black),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: SizedBox(
                      height: 45,
                      width: 100,
                      child: TextRegular(
                          text: 'Quantity: ' + box.read('val2'),
                          fontSize: 20,
                          color: Colors.black),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          image: const DecorationImage(
                            image: AssetImage('assets/images/male.png'),
                            fit: BoxFit.fitHeight,
                          ),
                          borderRadius: BorderRadius.circular(25)),
                    ),
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 25),
                        child: TextRegular(
                            text: 'Store 3', fontSize: 20, color: Colors.black),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 25),
                        child: TextRegular(
                            text: 'Price: ', fontSize: 20, color: Colors.black),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: SizedBox(
                      height: 45,
                      width: 100,
                      child: TextRegular(
                          text: 'Quantity: ' + box.read('val3'),
                          fontSize: 20,
                          color: Colors.black),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          image: const DecorationImage(
                            image: AssetImage('assets/images/male.png'),
                            fit: BoxFit.fitHeight,
                          ),
                          borderRadius: BorderRadius.circular(25)),
                    ),
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 25),
                        child: TextRegular(
                            text: 'Store 4', fontSize: 20, color: Colors.black),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 25),
                        child: TextRegular(
                            text: 'Price: ', fontSize: 20, color: Colors.black),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: SizedBox(
                      height: 45,
                      width: 100,
                      child: TextRegular(
                          text: 'Quantity: ' + box.read('val4'),
                          fontSize: 20,
                          color: Colors.black),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          image: const DecorationImage(
                            image: AssetImage('assets/images/male.png'),
                            fit: BoxFit.fitHeight,
                          ),
                          borderRadius: BorderRadius.circular(25)),
                    ),
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 25),
                        child: TextRegular(
                            text: 'Store 5', fontSize: 20, color: Colors.black),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 25),
                        child: TextRegular(
                            text: 'Price: ', fontSize: 20, color: Colors.black),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: SizedBox(
                      height: 45,
                      width: 100,
                      child: TextRegular(
                          text: 'Quantity: ' + box.read('val5'),
                          fontSize: 20,
                          color: Colors.black),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          image: const DecorationImage(
                            image: AssetImage('assets/images/male.png'),
                            fit: BoxFit.fitHeight,
                          ),
                          borderRadius: BorderRadius.circular(25)),
                    ),
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 25),
                        child: TextRegular(
                            text: 'Store 6', fontSize: 20, color: Colors.black),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 25),
                        child: TextRegular(
                            text: 'Price: ', fontSize: 20, color: Colors.black),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: SizedBox(
                      height: 45,
                      width: 100,
                      child: TextRegular(
                          text: 'Quantity: ' + box.read('val6'),
                          fontSize: 20,
                          color: Colors.black),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => const ConfirmationScreen()));
                  },
                  child: TextRegular(
                      text: 'Next', fontSize: 25, color: Colors.black),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  color: Colors.white,
                  minWidth: 200,
                  height: 65,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
