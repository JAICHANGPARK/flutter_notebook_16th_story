import 'package:flutter/material.dart';

class FarmaciaHomePage extends StatelessWidget {
  const FarmaciaHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 72,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                    child: Container(
                      width: 100,
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  decoration: BoxDecoration(color: Colors.black,
                  borderRadius: BorderRadius.circular(4)),
                  child: Row(
                    children: [Icon(Icons.apps), Text("Home")],
                  ),
                )),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.shopping_cart_outlined,
                    )),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.search,
                    )),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.bookmark_border,
                    )),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.account_circle_outlined,
                    )),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
