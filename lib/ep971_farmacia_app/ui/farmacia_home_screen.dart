import 'package:flutter/material.dart';

class FarmaciaHomeScreen extends StatelessWidget {
  const FarmaciaHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              CircleAvatar(
                radius: 24,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hello, Dream!",
                      style: TextStyle(fontWeight: FontWeight.bold,
                      fontSize: 16),
                    ),
                    Text("What are you looking for today?")
                  ],
                ),
              ),
              Container(
                height: 32,
                width: 32,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(4),

                ),
                child: Icon(Icons.qr_code_scanner_outlined,color: Colors.white,),
              )
            ],
          ),
        )
      ],
    );
  }
}
