import 'package:canteen_app/screens/users_screen.dart';
import 'package:canteen_app/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class FoodReservationScreen extends StatelessWidget {
  const FoodReservationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade200,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.blue.shade200,
        centerTitle: true,
        title: TextRegular(
            text: 'Food Reservation', fontSize: 25, color: Colors.black),
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const UserScreen()));
            },
            icon: const Icon(Icons.navigate_before_rounded)),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
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
                            text: 'Order Details Here',
                            fontSize: 35,
                            color: Colors.black),
                      ],
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: MaterialButton(
                      minWidth: 150,
                      height: 55,
                      color: Colors.white,
                      onPressed: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (context) => const UserScreen()));
                      },
                      child: TextRegular(
                          text: 'Menu', fontSize: 25, color: Colors.black),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: MaterialButton(
                      minWidth: 150,
                      height: 55,
                      color: Colors.white,
                      onPressed: () {
                        showDialog(
                            barrierDismissible: false,
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                title: TextRegular(
                                    text: "Thank You for Ordering with us !",
                                    fontSize: 22,
                                    color: Colors.black),
                                actions: [
                                  TextButton(
                                      onPressed: () {
                                        Navigator.of(context).push(
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const UserScreen()));
                                      },
                                      child: const Text('Proceed')),
                                ],
                              );
                            });
                      },
                      child: TextRegular(
                          text: 'Confirm', fontSize: 25, color: Colors.black),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
