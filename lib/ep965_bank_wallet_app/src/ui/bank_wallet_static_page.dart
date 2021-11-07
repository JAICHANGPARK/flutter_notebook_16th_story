import 'package:flutter/material.dart';


class BankWalletStaticPage extends StatefulWidget {
  const BankWalletStaticPage({Key? key}) : super(key: key);

  @override
  _BankWalletStaticPageState createState() => _BankWalletStaticPageState();
}

class _BankWalletStaticPageState extends State<BankWalletStaticPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        child: Row(
          children: [
            IconButton(onPressed: (){}, icon: Icon(Icons.home)),
            IconButton(onPressed: (){}, icon: Icon(Icons.home)),
            IconButton(onPressed: (){}, icon: Icon(Icons.home)),
            IconButton(onPressed: (){}, icon: Icon(Icons.home)),
            IconButton(onPressed: (){}, icon: Icon(Icons.home)),

          ],
        ),
      ),
    );
  }
}
