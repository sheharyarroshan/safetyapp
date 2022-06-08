import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'constants.dart';

class CallButton extends StatelessWidget {
  const CallButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        textStyle: const TextStyle(fontSize: 30),
      ),
      onPressed: () {},
      child: RichText(
        text: const TextSpan(
          children: <TextSpan>[
            TextSpan(
                text: 'Call Now',
                style: TextStyle(
                    fontSize: 30,
                    fontFamily: 'Georgia Regular font',
                    color: Colorlib.kGreen_button,
                    decoration: TextDecoration.underline))
          ],
        ),
        textScaleFactor: 0.5,
      ),
    );
  }
}
