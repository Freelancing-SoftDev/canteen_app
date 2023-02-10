import 'package:canteen_app/screens/menu_data_list_screen.dart';
import 'package:canteen_app/screens/store_screen.dart';
import 'package:canteen_app/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class MenuDataScreen extends StatelessWidget {
  const MenuDataScreen({Key? key}) : super(key: key);

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
                  minWidth: 150,
                  height: 55,
                  color: Colors.white,
                  onPressed: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => const StoreScreen()));
                  },
                  child: TextRegular(
                      text: 'Back', fontSize: 25, color: Colors.black),
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
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => const MenuDataListScreen()));
                  },
                  child: TextRegular(
                      text: 'Proceed', fontSize: 25, color: Colors.black),
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
