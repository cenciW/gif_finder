import 'package:flutter/material.dart';
import 'package:share/share.dart';

//open -> see -> readonly

class GifPage extends StatelessWidget {
  // const GifPage({super.key});
  final Map<String, dynamic> _gifData;

  GifPage(this._gifData);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          _gifData["title"],
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.share,
              color: Colors.white,
            ),
            onPressed: () {
              Share.share(_gifData["images"]["fixed_height"]["url"]);
            },
          )
        ],
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Image.network(
          _gifData["images"]["fixed_height"]["url"],
        ),
      ),
    );
  }
}
