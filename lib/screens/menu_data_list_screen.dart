import 'package:canteen_app/screens/store_screen.dart';
import 'package:canteen_app/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class MenuDataListScreen extends StatelessWidget {
  const MenuDataListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade200,
      appBar: AppBar(
        backgroundColor: Colors.blue.shade200,
        centerTitle: true,
        title:
            TextRegular(text: 'Menu Data', fontSize: 25, color: Colors.black),
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const StoreScreen()));
            },
            icon: const Icon(Icons.navigate_before_rounded)),
      ),
      body: SingleChildScrollView(
          child: Center(
        child: Column(children: [
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
                        text: 'Edit Menu Data',
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
                  minWidth: 300,
                  height: 55,
                  color: Colors.white,
                  onPressed: () {
                    showDialog(
                        barrierDismissible: true,
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: TextRegular(
                                text: "Download Complete",
                                fontSize: 22,
                                color: Colors.black),
                            actions: [
                              TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pushReplacement(
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const StoreScreen()));
                                  },
                                  child: const Text('Proceed')),
                            ],
                          );
                        });
                  },
                  child: TextRegular(
                      text: 'Download', fontSize: 25, color: Colors.black),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                ),
              ),
            ],
          ),
        ]),
      )),
    );
  }
}
