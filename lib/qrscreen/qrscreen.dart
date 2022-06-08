import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:safetyapp/utilis/constants.dart';

class QRScreen extends StatelessWidget {
  const QRScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            const Image(
              image: AssetImage('assets/background/background.png'),
            ),
            GestureDetector(
              child: const Center(
                child: Image(
                  image: AssetImage('assets/qrscreen/qrcode.png'),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 360.0),
              child: Center(
                child: Text(
                  'Scan QR Code',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      fontSize: 20.0,
                      fontFamily: 'Georgia Regular font'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
