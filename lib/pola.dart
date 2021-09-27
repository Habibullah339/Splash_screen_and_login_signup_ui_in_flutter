import 'package:flutter/material.dart';
class PolaImage extends StatefulWidget {
  const PolaImage({Key? key}) : super(key: key);

  @override
  _PolaImageState createState() => _PolaImageState();
}

class _PolaImageState extends State<PolaImage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: Card(

        child: Image.asset(
          'assets/FB_IMG_1631101608805.jpg',
          fit: BoxFit.cover,
        ),

        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),

        ),

        elevation: 5,

        margin: EdgeInsets.all(10),

      ),
    );
  }
}
