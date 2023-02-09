import 'package:canteen_app/screens/order_screen.dart';
import 'package:canteen_app/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class UserScreen extends StatelessWidget {
  const UserScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade200,
      appBar: AppBar(
          centerTitle: true,
          title: TextRegular(
              text: "User's Profile", fontSize: 25, color: Colors.white),
          backgroundColor: Colors.blue.shade200,
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => OrderScreen()));
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
                        image: AssetImage('assets/images/male.png'),
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
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) => OrderScreen()));
                  },
                  child: TextRegular(
                      text: 'Canteen Menu', fontSize: 30, color: Colors.black),
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
                  onPressed: () {},
                  child: TextRegular(
                      text: 'Food Reservation',
                      fontSize: 30,
                      color: Colors.black),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
