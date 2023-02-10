import 'package:canteen_app/screens/order_detail_screen.dart';
import 'package:canteen_app/screens/signup_screen.dart';
import 'package:canteen_app/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({Key? key}) : super(key: key);

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  late String valueChoose;
  List listItem = ["Item 1", "Item 2", "Item 3", "Item 4", "Item 5"];

  final box = GetStorage();
  late String quantity1;
  late String quantity2;
  late String quantity3;
  late String quantity4;
  late String quantity5;
  late String quantity6;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade200,
      appBar: AppBar(
        backgroundColor: Colors.blue.shade200,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => SignupScreen()));
          },
          icon: const Icon(Icons.navigate_before_rounded),
        ),
        centerTitle: true,
        title:
            TextRegular(text: "Order Food", fontSize: 25, color: Colors.black),
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
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: SizedBox(
                      height: 45,
                      width: 100,
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        onChanged: (String input) {
                          quantity1 = input;
                        },
                        decoration: InputDecoration(
                          label: TextRegular(
                              text: 'Enter Quantity',
                              fontSize: 12,
                              color: Colors.black),
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.black),
                              borderRadius: BorderRadius.circular(15)),
                        ),
                      ),
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
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: SizedBox(
                      height: 45,
                      width: 100,
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        onChanged: (String input) {
                          quantity2 = input;
                        },
                        decoration: InputDecoration(
                          label: TextRegular(
                              text: 'Enter Quantity',
                              fontSize: 12,
                              color: Colors.black),
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.black),
                              borderRadius: BorderRadius.circular(15)),
                        ),
                      ),
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
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: SizedBox(
                      height: 45,
                      width: 100,
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        onChanged: (String input) {
                          quantity3 = input;
                        },
                        decoration: InputDecoration(
                          label: TextRegular(
                              text: 'Enter Quantity',
                              fontSize: 12,
                              color: Colors.black),
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.black),
                              borderRadius: BorderRadius.circular(15)),
                        ),
                      ),
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
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: SizedBox(
                      height: 45,
                      width: 100,
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        onChanged: (String input) {
                          quantity4 = input;
                        },
                        decoration: InputDecoration(
                          label: TextRegular(
                              text: 'Enter Quantity',
                              fontSize: 12,
                              color: Colors.black),
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.black),
                              borderRadius: BorderRadius.circular(15)),
                        ),
                      ),
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
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: SizedBox(
                      height: 45,
                      width: 100,
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        onChanged: (String input) {
                          quantity5 = input;
                        },
                        decoration: InputDecoration(
                          label: TextRegular(
                              text: 'Enter Quantity',
                              fontSize: 12,
                              color: Colors.black),
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.black),
                              borderRadius: BorderRadius.circular(15)),
                        ),
                      ),
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
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: SizedBox(
                      height: 45,
                      width: 100,
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        onChanged: (String input) {
                          quantity6 = input;
                        },
                        decoration: InputDecoration(
                          label: TextRegular(
                              text: 'Enter Quantity',
                              fontSize: 12,
                              color: Colors.black),
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.black),
                              borderRadius: BorderRadius.circular(15)),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: MaterialButton(
                  onPressed: () {
                    box.write('val1', quantity1);
                    box.write('val2', quantity2);
                    box.write('val3', quantity3);
                    box.write('val4', quantity4);
                    box.write('val5', quantity5);
                    box.write('val6', quantity6);
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => OrderDetailsScreen()));
                  },
                  child: TextRegular(
                      text: 'Proceed', fontSize: 25, color: Colors.black),
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
