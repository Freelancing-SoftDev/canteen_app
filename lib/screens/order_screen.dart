import 'package:canteen_app/screens/signup_screen.dart';
import 'package:canteen_app/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({Key? key}) : super(key: key);

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  late String valueChoose;
  List listItem = ["Item 1", "Item 2", "Item 3", "Item 4", "Item 5"];

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
          iconSize: 45,
          color: Colors.white,
        ),
        centerTitle: true,
        title: TextRegular(
            text: "User's Profile", fontSize: 25, color: Colors.black),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
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
                        onChanged: (String inout) {},
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
                        onChanged: (String inout) {},
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
                        onChanged: (String inout) {},
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
                        onChanged: (String inout) {},
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
                        onChanged: (String inout) {},
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
                        onChanged: (String inout) {},
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
              MaterialButton(
                onPressed: () {
                  Navigator.of(context).pop();
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
            ],
          ),
        ),
      ),
    );
  }
}
